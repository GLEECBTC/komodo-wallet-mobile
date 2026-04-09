#include <optional>
#include <jni.h>
#include <android/log.h>
#include <mutex>

extern "C" {

/// Defined in "mm2_lib.rs".
int8_t mm2_main(const char *conf, void (*log_cb)(const char *line));

/// Checks if the MM2 singleton thread is currently running or not.
/// 0 .. not running.
/// 1 .. running, but no context yet.
/// 2 .. context, but no RPC yet.
/// 3 .. RPC is up.
int8_t mm2_main_status();

/// Defined in "mm2_lib.rs".
/// 0 .. MM2 has been stopped successfully.
/// 1 .. not running.
/// 2 .. error stopping an MM2 instance.
int8_t mm2_stop();

}

#define STRINGIFY(x) #x
#define TOSTRING(x) STRINGIFY(x)
#define LTAG "mm2_native:" TOSTRING(__LINE__) "] "

#define LOG_D(format, ...) __android_log_print(ANDROID_LOG_DEBUG, LTAG, format "\n", ##__VA_ARGS__)
#define LOG_E(format, ...) __android_log_print(ANDROID_LOG_ERROR, LTAG, format "\n", ##__VA_ARGS__)

class LogHandler {
public:
  static std::optional<LogHandler> create(JNIEnv *env, jobject log_listener) {
    JavaVM *jvm = nullptr;
    // Returns “0” on success; returns a negative value on failure.
    if (env->GetJavaVM(&jvm)) {
      LOG_E("Couldn't get JavaVM");
      return std::nullopt;
    }

    // Returns a global reference, or NULL if the system runs out of memory.
    jobject listener = env->NewGlobalRef(log_listener);
    if (!listener) {
      LOG_E("Couldn't create a listener global reference");
      return std::nullopt;
    }

    jclass obj = env->GetObjectClass(listener);
    // Returns a method ID, or NULL if the specified method cannot be found.
    jmethodID log_callback = env->GetMethodID(obj, "onLog", "(Ljava/lang/String;)V");
    if (!log_callback) {
      LOG_E("Couldn't get method ID");
      // GetMethodID could threw an exception.
      exception_check(env);
      return std::nullopt;
    }

    return LogHandler(jvm, listener, log_callback);
  }

  explicit LogHandler(JavaVM *jvm, jobject listener, jmethodID log_callback)
      : m_jvm(jvm),
        m_listener(listener),
        m_log_callback(log_callback) {
  }

  // Note: LogHandler::release() must be called before the destructor.
  ~LogHandler() = default;

  void release(JNIEnv *env) {
    env->DeleteGlobalRef(m_listener);
    // Do not release m_jvm and m_log_callback.
  }

  // Credit to @MateusRodCosta for the following code from the atomicdex-web repo.
  void replaceInvalidUtf8Bytes(const char *src, char *dst) {
    unsigned int len = strlen(src);
    unsigned int j = 0;

    for (unsigned int i = 0; i < len;) {
      unsigned char byte = static_cast<unsigned char>(src[i]);

      if (byte <= 0x7F) {
        dst[j++] = byte;
        i += 1;
      } else if ((byte & 0xE0) == 0xC0 && i + 1 < len && (src[i + 1] & 0xC0) == 0x80) {
        dst[j++] = byte;
        dst[j++] = src[i + 1];
        i += 2;
      } else if ((byte & 0xF0) == 0xE0 && i + 2 < len && (src[i + 1] & 0xC0) == 0x80 && (src[i + 2] & 0xC0) == 0x80) {
        dst[j++] = byte;
        dst[j++] = src[i + 1];
        dst[j++] = src[i + 2];
        i += 3;
      } else if ((byte & 0xF8) == 0xF0 && i + 3 < len && (src[i + 1] & 0xC0) == 0x80 && (src[i + 2] & 0xC0) == 0x80 && (src[i + 3] & 0xC0) == 0x80) {
        dst[j++] = byte;
        dst[j++] = src[i + 1];
        dst[j++] = src[i + 2];
        dst[j++] = src[i + 3];
        i += 4;
      } else {
        // Replace invalid byte sequence with '?' (0x3F)
        dst[j++] = '?';
        i += 1;
      }
    }

    dst[j] = '\0';
  }

  void process_log_line(const char *line) {
    JNIEnv *env = nullptr;
    int env_stat = m_jvm->GetEnv((void **)&env, JNI_VERSION_1_6);
    if (env_stat == JNI_EDETACHED) {
      // Should another thread need to access the Java VM, it must first call AttachCurrentThread()
      // to attach itself to the VM and obtain a JNI interface pointer.
      // https://docs.oracle.com/javase/9/docs/specs/jni/invocation.html#attaching-to-the-vm

      if (m_jvm->AttachCurrentThread(&env, nullptr) != 0) {
        LOG_E("Failed to attach");
        return;
      }
    } else if (env_stat == JNI_EVERSION) {
      LOG_E("Version not supported");
      return;
    } else if (env_stat != JNI_OK) {
      LOG_E("Unexpected error");
      return;
    }

    char rplc_line[strlen(line) * 3 + 1]; // Space for the worst case scenario (all bytes replaced by the 3-byte replacement character sequence)
    // Credit to @MateusRodCosta for the following line from the atomicdex-web repo.
    replaceInvalidUtf8Bytes(line, rplc_line);

    jstring jline = env->NewStringUTF(rplc_line);
    // Call a Java callback.
    env->CallVoidMethod(m_listener, m_log_callback, jline);
    // CallVoidMethod could threw an exception.
    exception_check(env);

    if (env_stat == JNI_EDETACHED) {
      // Detach itself before exiting.
      m_jvm->DetachCurrentThread();
    }
  }

private:
  static void exception_check(JNIEnv *env) {
    if (env->ExceptionCheck()) {
      LOG_E("An exception is being thrown");
      // Prints an exception and a backtrace of the stack to a system error-reporting channel, such as stderr
      env->ExceptionDescribe();
      // Clears any exception that is currently being thrown
      env->ExceptionClear();
    }
  }

  JavaVM *m_jvm = nullptr;
  jobject m_listener = nullptr;
  jmethodID m_log_callback = nullptr;
};

static std::mutex LOG_MUTEX;
static std::optional<LogHandler> LOG_HANDLER;

extern "C" JNIEXPORT jbyte JNICALL
Java_com_gleec_gleecdex_MainActivity_nativeMm2Main(
    JNIEnv *env,
    jobject, /* this */
    jstring conf,
    jobject log_listener) {
  {
    const auto lock = std::lock_guard(LOG_MUTEX);
    if (LOG_HANDLER) {
      LOG_D("LOG_HANDLER is initialized already, release it");
      LOG_HANDLER->release(env);
    }
    LOG_HANDLER = LogHandler::create(env, log_listener);
  }

  const char *c_conf = env->GetStringUTFChars(conf, nullptr);

  const auto result = mm2_main(c_conf, [](const char *line) {
    const auto lock = std::lock_guard(LOG_MUTEX);
    if (!LOG_HANDLER) {
      LOG_E("LOG_HANDLER is not initialized");
      return;
    }
    LOG_HANDLER->process_log_line(line);
  });

  env->ReleaseStringUTFChars(conf, c_conf);
  return static_cast<jbyte>(result);
}

extern "C" JNIEXPORT jbyte JNICALL
Java_com_gleec_gleecdex_MainActivity_nativeMm2MainStatus(
    JNIEnv *,
    jobject /* this */) {
  return static_cast<jbyte>(mm2_main_status());
}

extern "C" JNIEXPORT jbyte JNICALL
Java_com_gleec_gleecdex_MainActivity_nativeMm2Stop(
    JNIEnv *,
    jobject /* this */) {
  return static_cast<jbyte>(mm2_stop());
}

package com.gleec.gleecdex;

import android.Manifest;
import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.WindowManager;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;

import java.util.HashMap;
import java.util.Map;

import io.flutter.embedding.android.FlutterFragmentActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;
import android.content.SharedPreferences;
import android.util.Log;

public class MainActivity extends FlutterFragmentActivity {
  private EventChannel logC;
  private EventChannel.EventSink logSink;
  private Handler log_handler;
  private Uri paymentUri;

  static {
    System.loadLibrary("mm2-lib");
  }

  @Override
  protected void onCreate(@Nullable Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    Intent intent = getIntent();
    getPaymentUri(intent);
  }

  @Override
  protected void onPause() {
    screenshotAction();
    super.onPause();
  }

  @Override
  protected void onResume() {
    screenshotAction();
    super.onResume();
  }

  void screenshotAction(){
    SharedPreferences sharedpreferences = getSharedPreferences("FlutterSharedPreferences", Context.MODE_PRIVATE);
    boolean disallowScreenshot = sharedpreferences.getBoolean("flutter.disallowScreenshot", true);
    Log.d("disallowScreenshot", String.valueOf(disallowScreenshot));

    if(disallowScreenshot) {
      runOnUiThread(() -> getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE));
    } else{
      runOnUiThread(() -> getWindow().clearFlags(WindowManager.LayoutParams.FLAG_SECURE));
    }
  }



  @Override
  protected void onNewIntent(@NonNull Intent intent) {
    getPaymentUri(intent);
    super.onNewIntent(intent);
  }

  private void createNotificationChannel() {
    // TBD: Use AndroidX to create the channel.
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
      NotificationChannel channel = new NotificationChannel("com.gleec.gleecdex/notification",
          "General notifications", NotificationManager.IMPORTANCE_HIGH);
      channel.setDescription("Gleec Wallet general notifications");
      channel.enableLights(true);
      channel.setLightColor(0xFF64ffbf);
      channel.enableVibration(true);

      // Workaround the Flutter classpath issues (unavailability of the
      // `android.support.v4.app.FragmentActivity` on the classpath).
      logSink.success("createNotificationChannel] Casting `this` to `Activity`..");
      Activity activity = (Activity) (Object) this;

      NotificationManager notificationManager = (NotificationManager) activity.getSystemService(NOTIFICATION_SERVICE);
      notificationManager.createNotificationChannel(channel);
      logSink.success("createNotificationChannel] done createNotificationChannel");
    }
  }

  void createNotification(String title, String text, int uid) {Activity activity = (Activity) (Object) this;
    NotificationCompat.Builder builder = new NotificationCompat
    .Builder(activity,
        "com.gleec.gleecdex/notification")
        .setSmallIcon(R.mipmap.ic_launcher_round)
        .setContentTitle(title)
        .setContentText(text)
        .setPriority(NotificationCompat.PRIORITY_DEFAULT)
        .setAutoCancel(true)
        .setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class),
        PendingIntent.FLAG_UPDATE_CURRENT));

    NotificationManagerCompat notificationManagerCompat = NotificationManagerCompat.from(activity);
    // notificationId is a unique int for each notification that you must define
    int notificationId = uid;
    notificationManagerCompat.notify(notificationId, builder.build());
  }

  private void nativeC(FlutterEngine flutterEngine) {
    final Activity activity = this;
    final Context context = activity.getApplicationContext();

    BinaryMessenger bm = flutterEngine.getDartExecutor().getBinaryMessenger();
    // https://flutter.dev/docs/development/platform-integration/platform-channels?tab=android-channel-kotlin-tab#step-3-add-an-android-platform-specific-implementation
    new MethodChannel(bm, "com.gleec.gleecdex/nativeC")
        .setMethodCallHandler(new MethodChannel.MethodCallHandler() {
          @Override
          public void onMethodCall(MethodCall call, MethodChannel.Result result) {
            if (call.method.equals("ping")) { // Allows us to test the channel.
              // Example using the `logSink`:
              //
              // logSink?.success ("ping] Logging from MainActivity.kt; BUILD_TIME: " +
              // BuildConfig.BUILD_TIME)

              result.success("pong");
            } else if (call.method.equals("show_notification")) {
              createNotification(call.argument("title"), call.argument("text"), call.argument("uid"));
              result.success(null);
            } else if (call.method.equals("BUILD_TIME")) {
              // NB: If Kotlin is missing the “BUILD_TIME” then use “flutter build apk
              // --debug”
              // to generate the
              // “komodoDEX/build/app/intermediates/javac/debug/classes/com/komodoplatform/atomicdex/BuildConfig.class”.
              result.success(BuildConfig.BUILD_TIME);
            } else if  (call.method.equals("start")) {
              int ret = startMm2(call.argument("params"));
              result.success(ret);
            } else if (call.method.equals("status")) {
              int status = (int)nativeMm2MainStatus();
              result.success(status);
            } else if (call.method.equals("stop")) {
              logSink.success("STOP MM2 --------------------------------");
              int ret = (int)nativeMm2Stop();
              result.success(ret);
            } else if (call.method.equals("is_camera_denied")) {
              boolean ret = ContextCompat.checkSelfPermission(activity, Manifest.permission.CAMERA) == PackageManager.PERMISSION_DENIED;
              result.success(ret);
            } else if (call.method.equals("is_screenshot")) {
              screenshotAction();
              result.success(true);
            } else if (call.method.equals("get_intent_data")) {
              // Currently should only work for payment uris
              // Hopefully can later be expanded for use on notifications
              String r = null;
              if(paymentUri!= null) {
                r = paymentUri.toString();
              }
              result.success(r);
              paymentUri = null;
            } else if (call.method.equals("battery")) {
              final IntentFilter iFilter = new IntentFilter(Intent.ACTION_BATTERY_CHANGED);
              final Intent batteryStatus = context.registerReceiver(null, iFilter);

              int status = batteryStatus.getIntExtra(BatteryManager.EXTRA_STATUS, -1);
              boolean isCharging = status == BatteryManager.BATTERY_STATUS_CHARGING;

              int level = batteryStatus.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
              int scale = batteryStatus.getIntExtra(BatteryManager.EXTRA_SCALE, -1);
              float batteryLevel = level / (float)scale;

              final PowerManager pm = (PowerManager) getSystemService(Context.POWER_SERVICE);
              final boolean isPowerSaveMode = pm.isPowerSaveMode();

              Map<String, Object> map = new HashMap<String, Object>();
              map.put("level", batteryLevel);
              map.put("charging", isCharging);
              map.put("lowPowerMode", isPowerSaveMode);

              result.success(map);
            } else {
              result.notImplemented();
            }
          }
        });
  }

  private void logC(FlutterEngine flutterEngine) {
    // https://blog.testfairy.com/listeners-with-eventchannel-in-flutter/
    // https://api.flutter.dev/javadoc/index.html?io/flutter/plugin/common/EventChannel.html
    BinaryMessenger bm = flutterEngine.getDartExecutor().getBinaryMessenger();
    EventChannel chan = new EventChannel(bm, "AtomicDEX/logC");

    chan.setStreamHandler(new EventChannel.StreamHandler() {
      @Override
      public void onListen(Object arguments, EventChannel.EventSink eventSink) {
        logSink = eventSink;
        createNotificationChannel();
      }

      @Override
      public void onCancel(Object arguments) {
        logSink = null;
      }
    });

    logC = chan;
  }

  private int startMm2(String conf) {
    log_handler = new Handler(Looper.getMainLooper());

    logSink.success("START MM2 --------------------------------");
    byte ret = nativeMm2Main(conf, new JNILogListener() {
      @Override
      public void onLog(String line) {
        // send the line to the main thread handler
        log_handler.post(
          new Runnable() {
            @Override
            public void run() {
              // this will be called in main thread
              logSink.success("MainActivity] ".concat(line));
            }
          });
      }
    });
    return (int) ret;
  }

  void getPaymentUri(Intent intent) {
    paymentUri = intent.getData();
  }
  /// Corresponds to Java_com_gleec_gleecdex_MainActivity_nativeMm2MainStatus in main.cpp
  private native byte nativeMm2MainStatus();

  /// Corresponds to Java_com_gleec_gleecdex_MainActivity_nativeMm2Main in main.cpp
  private native byte nativeMm2Main(String conf, JNILogListener listener);

  /// Corresponds to Java_com_gleec_gleecdex_MainActivity_nativeMm2Stop in main.cpp
  private native byte nativeMm2Stop();

  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine);
    nativeC(flutterEngine);
    logC(flutterEngine);
  }
}

interface JNILogListener {
  void onLog(String line);
}

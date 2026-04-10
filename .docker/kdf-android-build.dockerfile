FROM docker.io/ubuntu:22.04

LABEL Author="Onur Özkan <onur@komodoplatform.com>"
ARG KDF_BRANCH=main

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    build-essential \
    libssl-dev \ 
    cmake \
    llvm-dev \
    libclang-dev \ 
    lld \
    gcc \
    libc6-dev \
    jq \
    make \
    pkg-config \
    git \
    automake \
    libtool \
    m4 \
    autoconf \
    make \
    file \
    curl \
    wget \
    gnupg \
    python-is-python3 \
    software-properties-common \
    lsb-release \
    libudev-dev \
    zip unzip \
    binutils && \
    apt-get clean

RUN curl --output llvm.sh https://apt.llvm.org/llvm.sh && \
    chmod +x llvm.sh && \
    ./llvm.sh 16 && \
    rm ./llvm.sh && \
    ln -s /usr/bin/clang-16 /usr/bin/clang && \
    PROTOC_ZIP=protoc-25.3-linux-x86_64.zip && \
    curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v25.3/$PROTOC_ZIP && \
    unzip -o $PROTOC_ZIP -d /usr/local bin/protoc && \
    unzip -o $PROTOC_ZIP -d /usr/local 'include/*' && \
    rm -f $PROTOC_ZIP

ENV AR=/usr/bin/llvm-ar-16
ENV CC=/usr/bin/clang-16

RUN mkdir -m 0755 -p /etc/apt/keyrings

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    export PATH="/root/.cargo/bin:$PATH" && \ 
    rustup toolchain install nightly-2023-06-01 --no-self-update --profile=minimal && \
    rustup default nightly-2023-06-01 && \
    rustup target add aarch64-linux-android && \
    rustup target add armv7-linux-androideabi && \
    apt install -y python3 python3-pip git curl nodejs python3-venv sudo && \
    git clone https://github.com/KomodoPlatform/komodo-defi-framework.git /app && \
    cd /app && \
    git fetch --all && \
    git checkout origin/$KDF_BRANCH && \
    if [ "$(uname -m)" = "x86_64" ]; then \
    bash ./scripts/ci/android-ndk.sh x86 23; \
    elif [ "$(uname -m)" = "aarch64" ]; then \
    bash ./scripts/ci/android-ndk.sh arm64 23; \
    else \
    echo "Unsupported architecture"; \
    exit 1; \
    fi 

ENV PATH="/root/.cargo/bin:$PATH"

ENV PATH=$PATH:/android-ndk/bin

# Libz is distributed in the android ndk, but for some unknown reason it is not
# found in the build process of some crates, so we explicit set the DEP_Z_ROOT
ENV CARGO_TARGET_X86_64_LINUX_ANDROID_LINKER=x86_64-linux-android-clang \
    CARGO_TARGET_X86_64_LINUX_ANDROID_RUNNER="qemu-x86_64 -cpu qemu64,+mmx,+sse,+sse2,+sse3,+ssse3,+sse4.1,+sse4.2,+popcnt" \
    CC_x86_64_linux_android=x86_64-linux-android-clang \
    CXX_x86_64_linux_android=x86_64-linux-android-clang++ \
    CARGO_TARGET_ARMV7_LINUX_ANDROIDEABI_LINKER=armv7a-linux-androideabi21-clang \
    CARGO_TARGET_ARMV7_LINUX_ANDROIDEABI_RUNNER=qemu-arm \
    CC_armv7_linux_androideabi=armv7a-linux-androideabi21-clang \
    CXX_armv7_linux_androideabi=armv7a-linux-androideabi21-clang++ \
    CC_aarch64_linux_android=aarch64-linux-android21-clang \
    CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER=aarch64-linux-android21-clang \
    CC_armv7_linux_androideabi=armv7a-linux-androideabi21-clang \
    CARGO_TARGET_ARMV7_LINUX_ANDROIDEABI_LINKER=armv7a-linux-androideabi21-clang \
    DEP_Z_INCLUDE=/android-ndk/sysroot/usr/include/ \
    OPENSSL_STATIC=1 \
    OPENSSL_DIR=/openssl \
    OPENSSL_INCLUDE_DIR=/openssl/include \
    OPENSSL_LIB_DIR=/openssl/lib \
    RUST_TEST_THREADS=1 \
    HOME=/tmp/ \
    TMPDIR=/tmp/ \
    ANDROID_DATA=/ \
    ANDROID_DNS_MODE=local \
    ANDROID_ROOT=/system

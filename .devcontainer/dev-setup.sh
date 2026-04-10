#!/bin/bash

set -e

sudo git config core.fileMode false
sudo chmod -R u+rwx /home/komodo/workspace
sudo chown -R komodo:komodo /home/komodo/workspace
flutter pub get

curl -o assets/coins.json https://raw.githubusercontent.com/KomodoPlatform/coins/master/coins 
curl -o assets/coins_config_tcp.json https://raw.githubusercontent.com/KomodoPlatform/coins/master/utils/coins_config_tcp.json 
mkdir -p android/app/src/main/cpp/libs/armeabi-v7a 
mkdir -p android/app/src/main/cpp/libs/arm64-v8a 

cd /kdf 
export PATH="$HOME/.cargo/bin:$PATH" 
export PATH=$PATH:/android-ndk/bin
CC_aarch64_linux_android=aarch64-linux-android21-clang CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER=aarch64-linux-android21-clang cargo rustc --target=aarch64-linux-android --lib --release --crate-type=staticlib --package mm2_bin_lib
CC_armv7_linux_androideabi=armv7a-linux-androideabi21-clang CARGO_TARGET_ARMV7_LINUX_ANDROIDEABI_LINKER=armv7a-linux-androideabi21-clang cargo rustc --target=armv7-linux-androideabi --lib --release --crate-type=staticlib --package mm2_bin_lib
mv target/aarch64-linux-android/release/libkdflib.a target/aarch64-linux-android/release/libmm2.a 
mv target/armv7-linux-androideabi/release/libkdflib.a target/armv7-linux-androideabi/release/libmm2.a

mv /kdf/target/aarch64-linux-android/release/libmm2.a /home/komodo/workspace/android/app/src/main/cpp/libs/arm64-v8a/libmm2.a
mv /kdf/target/armv7-linux-androideabi/release/libmm2.a /home/komodo/workspace/android/app/src/main/cpp/libs/armeabi-v7a/libmm2.a
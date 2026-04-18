# Komodo Wallet Migration Utility

This Flutter application restores access to encrypted seed phrases that were stored by the retired Komodo (AtomicDEX) mobile wallet. It reuses the original bundle identifiers and storage locations so it can read the existing SQLite database and secure storage entries that belong to the legacy app.

## What it does

- Lists wallets found in `AtomicDEX.db` (the same database used by the legacy application).
- Supports three unlock methods that mirror the original app: password, PIN, or biometric authentication.
- Decrypts the stored seed phrase and presents it in-app so that users can back up their wallet manually.

No data is transmitted off-device; all operations happen locally.

## Building

1. Install the Flutter SDK (3.24 or newer) and the platform tooling for Android and/or iOS.
2. From this directory run:
   ```sh
   flutter pub get
   flutter run
   ```

The Android build uses the `com.komodoplatform.atomicdex` application id. The iOS target uses the `com.komodoplatform.atomicdex.kmd` bundle identifier so the app can access the same keychain items as the legacy build.

## Using the app

1. Install a debug or release build on the same device that still contains the legacy wallet data.
2. Launch the app and choose the wallet you want to migrate.
3. Unlock the seed with one of the available methods:
   - **Password** – enter the wallet password used in the old app.
   - **PIN** – if a PIN was configured, enter it to load the stored passphrase.
   - **Biometrics** – authenticate with Face ID / Touch ID / fingerprint if it was previously enabled.
4. Copy the revealed seed phrase and store it safely before installing any new wallets.

If none of the unlock methods are available (for example if the wallet never had a password), you will need to reinstall the original application. This utility can only read data that already exists on the device.

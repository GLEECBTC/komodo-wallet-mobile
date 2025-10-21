import '../models/wallet.dart';
import '../services/database_service.dart';
import '../services/encryption_tool.dart';
import '../services/auth_service.dart';

class WalletService {
  final EncryptionTool _encryptionTool = EncryptionTool();
  final AuthService _authService = AuthService();

  Future<List<Wallet>> getAvailableWallets() async {
    return await DatabaseService.getAllWallets();
  }

  Future<bool> canExportSeed(Wallet wallet) async {
    return await _encryptionTool.hasEncryptedSeed(wallet);
  }

  Future<String?> exportSeedWithPassword(Wallet wallet, String password) async {
    try {
      final seedPhrase = await _encryptionTool.readData(
        KeyEncryption.seed,
        wallet,
        password,
      );
      return seedPhrase;
    } catch (e) {
      return null;
    }
  }

  Future<String?> exportSeedWithBiometrics(Wallet wallet) async {
    try {
      // Check if biometric authentication is available
      final isBiometricAvailable = await _authService.isBiometricAvailable();
      if (!isBiometricAvailable) {
        throw Exception('Biometric authentication not available');
      }

      // Authenticate with biometrics
      final isAuthenticated = await _authService.authenticateWithBiometrics(
        reason: 'Authenticate to export wallet seed for ${wallet.name}',
        biometricOnly: true,
      );

      if (!isAuthenticated) {
        throw Exception('Biometric authentication failed');
      }

      // In the legacy app, biometric auth unlocks and returns the stored passphrase (seed phrase).
      // Do not pass the passphrase into the password-based decrypt path.
      final storedPassphrase = await _encryptionTool.read('passphrase');
      if (storedPassphrase != null && storedPassphrase.isNotEmpty) {
        return storedPassphrase;
      }

      throw Exception(
        'No stored passphrase found for biometric authentication',
      );
    } catch (e) {
      return null;
    }
  }

  Future<String?> exportSeedWithPin(Wallet wallet, String pin) async {
    try {
      // In the legacy app, PIN is used to access the stored passphrase,
      // which is then used to decrypt the seed
      final storedPin = await _encryptionTool.read('pin');
      if (storedPin == null || storedPin != pin) {
        throw Exception('Invalid PIN');
      }

      // Get the stored passphrase using the PIN validation
      final storedPassphrase = await _encryptionTool.read('passphrase');
      if (storedPassphrase != null && storedPassphrase.isNotEmpty) {
        return storedPassphrase;
      }

      throw Exception('No stored passphrase found');
    } catch (e) {
      return null;
    }
  }

  Future<bool> validatePin(String pin) async {
    try {
      final storedPin = await _encryptionTool.read('pin');
      return storedPin != null && storedPin == pin;
    } catch (e) {
      return false;
    }
  }

  Future<bool> isPinSetup() async {
    try {
      final storedPin = await _encryptionTool.read('pin');
      return storedPin != null && storedPin.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  Future<bool> isBiometricAvailable() async {
    try {
      return await _authService.isBiometricAvailable();
    } catch (e) {
      return false;
    }
  }

  Future<bool> isBiometricConfigured() async {
    try {
      final available = await _authService.isBiometricAvailable();
      if (!available) return false;
      final storedPassphrase = await _encryptionTool.read('passphrase');
      return storedPassphrase != null && storedPassphrase.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}

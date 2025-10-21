import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/wallet.dart';
import '../services/wallet_service.dart';

class WalletExportScreen extends StatefulWidget {
  const WalletExportScreen({super.key, required this.wallet});

  final Wallet wallet;

  @override
  State<WalletExportScreen> createState() => _WalletExportScreenState();
}

class _WalletExportScreenState extends State<WalletExportScreen> {
  final WalletService _walletService = WalletService();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();

  bool _isLoading = false;
  bool _pinAvailable = false;
  bool _biometricAvailable = false;
  bool _obscurePassword = true;
  bool _obscurePin = true;

  String? _exportedSeed;
  String? _errorMessage;
  _SeedUnlockMethod? _activeMethod;

  @override
  void initState() {
    super.initState();
    _initialiseSecurityOptions();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  Future<void> _initialiseSecurityOptions() async {
    try {
      final pinAvailable = await _walletService.isPinSetup();
      final biometricAvailable = await _walletService.isBiometricConfigured();
      if (!mounted) return;
      setState(() {
        _pinAvailable = pinAvailable;
        _biometricAvailable = biometricAvailable;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _pinAvailable = false;
        _biometricAvailable = false;
      });
    }
  }

  Future<void> _performExport(
    Future<String?> Function() exporter, {
    required String failureMessage,
    required _SeedUnlockMethod method,
  }) async {
    FocusScope.of(context).unfocus();
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _activeMethod = method;
    });

    try {
      final seed = await exporter();
      if (!mounted) {
        return;
      }
      if (seed == null || seed.isEmpty) {
        setState(() {
          _exportedSeed = null;
          _errorMessage = failureMessage;
        });
      } else {
        setState(() {
          _exportedSeed = seed;
          _errorMessage = null;
        });
      }
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _exportedSeed = null;
        _errorMessage = failureMessage;
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _activeMethod = null;
        });
      }
    }
  }

  Future<void> _exportWithPassword() async {
    final password = _passwordController.text;
    if (password.isEmpty) {
      setState(() {
        _errorMessage = 'Enter the wallet password to continue.';
      });
      return;
    }

    await _performExport(
      () => _walletService.exportSeedWithPassword(widget.wallet, password),
      failureMessage:
          'Unable to unlock the seed with the provided password. Please try again.',
      method: _SeedUnlockMethod.password,
    );
  }

  Future<void> _exportWithPin() async {
    final pin = _pinController.text;
    if (pin.isEmpty) {
      setState(() {
        _errorMessage = 'Enter the wallet PIN to continue.';
      });
      return;
    }

    await _performExport(
      () => _walletService.exportSeedWithPin(widget.wallet, pin),
      failureMessage:
          'PIN authentication failed. Verify your PIN and try again.',
      method: _SeedUnlockMethod.pin,
    );
  }

  Future<void> _exportWithBiometric() async {
    await _performExport(
      () => _walletService.exportSeedWithBiometrics(widget.wallet),
      failureMessage:
          'Biometric authentication did not succeed. Use another method or try again.',
      method: _SeedUnlockMethod.biometric,
    );
  }

  Future<void> _copySeedToClipboard() async {
    if (_exportedSeed == null) return;
    await Clipboard.setData(ClipboardData(text: _exportedSeed!));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Seed phrase copied to the clipboard'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Export Seed Phrase'),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.wallet.name,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Wallet ID: ${widget.wallet.id}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Choose one of the available unlock methods to reveal the seed phrase used by the legacy Komodo Wallet.',
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              if (_errorMessage != null)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer.withValues(
                      alpha: 0.2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _errorMessage!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
                ),
              if (_exportedSeed != null) _buildSeedDisplay(theme),
              _buildPasswordCard(theme),
              if (_pinAvailable) _buildPinCard(theme),
              if (_biometricAvailable) _buildBiometricCard(theme),
              if (!_pinAvailable && !_biometricAvailable)
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                    'PIN and biometric unlock are not configured for this wallet. Use the password method above.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSeedDisplay(ThemeData theme) {
    final textTheme = theme.textTheme;
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recovered Seed Phrase',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton.icon(
                  onPressed: _copySeedToClipboard,
                  icon: const Icon(Icons.copy),
                  label: const Text('Copy'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: SelectableText(
                _exportedSeed ?? '',
                style: textTheme.bodyLarge?.copyWith(
                  height: 1.4,
                  letterSpacing: 0.2,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Write this phrase down on paper and store it in a secure place. '
              'Anyone with access to it can control your funds.',
              style: textTheme.bodySmall?.copyWith(
                color:
                    (textTheme.bodySmall?.color ??
                            theme.colorScheme.onSurfaceVariant)
                        .withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordCard(ThemeData theme) {
    final textTheme = theme.textTheme;
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unlock with Password',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              enabled: !_isLoading,
              decoration: InputDecoration(
                labelText: 'Wallet password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _isLoading ? null : _exportWithPassword,
                child: _isLoading && _activeMethod == _SeedUnlockMethod.password
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Export using password'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPinCard(ThemeData theme) {
    final textTheme = theme.textTheme;
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unlock with PIN',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _pinController,
              enabled: !_isLoading,
              obscureText: _obscurePin,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Wallet PIN',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePin ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePin = !_obscurePin;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: _isLoading ? null : _exportWithPin,
                icon: const Icon(Icons.lock),
                label: _isLoading && _activeMethod == _SeedUnlockMethod.pin
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Export using PIN'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBiometricCard(ThemeData theme) {
    final textTheme = theme.textTheme;
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unlock with Biometrics',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Use Face ID, Touch ID, or fingerprint authentication to unlock using the stored passphrase.',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _isLoading ? null : _exportWithBiometric,
                icon: const Icon(Icons.fingerprint),
                label:
                    _isLoading && _activeMethod == _SeedUnlockMethod.biometric
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Use biometric authentication'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SeedUnlockMethod { password, pin, biometric }

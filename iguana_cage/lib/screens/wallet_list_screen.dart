import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../config/migration_config.dart';
import '../models/wallet.dart';
import '../services/wallet_service.dart';
import './wallet_export_screen.dart';

class WalletListScreen extends StatefulWidget {
  const WalletListScreen({super.key});

  @override
  State<WalletListScreen> createState() => _WalletListScreenState();
}

class _WalletListScreenState extends State<WalletListScreen> {
  final WalletService _walletService = WalletService();
  List<Wallet> _wallets = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadWallets();
  }

  Future<void> _loadWallets() async {
    try {
      final wallets = await _walletService.getAvailableWallets();
      setState(() {
        _wallets = wallets;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error loading wallets: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _selectWallet(Wallet wallet) async {
    // Check if wallet has exportable seed
    final canExport = await _walletService.canExportSeed(wallet);
    if (!canExport) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'This wallet does not have an exportable seed phrase',
            ),
            backgroundColor: Colors.orange,
          ),
        );
      }
      return;
    }

    // Navigate to export screen
    if (mounted) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => WalletExportScreen(wallet: wallet),
        ),
      );
    }
  }

  Widget _buildWarningBanner() {
    final int daysLeft = MigrationConfig.daysRemaining();
    final DateTime removal = MigrationConfig.removalDateUtc;
    final String daysText = daysLeft == 1 ? '1 day' : '$daysLeft days';
    final String dateText =
        '${removal.year}-${removal.month.toString().padLeft(2, '0')}-${removal.day.toString().padLeft(2, '0')}';

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        border: Border.all(color: Colors.amber.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.warning_amber_rounded, color: Colors.amber.shade800),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Only $daysText left to export and back up your data and migrate to the new Komodo Wallet app. This migration app will be permanently removed after $dateText.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.brown[800],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            tooltip: 'Open komodoplatform.com',
            icon: const Icon(Icons.open_in_new),
            color: Colors.brown[800],
            onPressed: _openKomodoWebsite,
          ),
        ],
      ),
    );
  }

  Future<void> _openKomodoWebsite() async {
    final uri = Uri.parse('https://komodoplatform.com/');
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open komodoplatform.com')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Komodo Wallet Migration'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          _buildWarningBanner(),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _wallets.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 64,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No wallets found',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Make sure you have wallets created in Komodo Wallet',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: Colors.grey[500]),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select a wallet to export:',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Choose the wallet you want to export the seed phrase from.',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 24),
                        Expanded(
                          child: ListView.builder(
                            itemCount: _wallets.length,
                            itemBuilder: (context, index) {
                              final wallet = _wallets[index];
                              return Card(
                                margin: const EdgeInsets.only(bottom: 12),
                                elevation: 2,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.all(16),
                                  leading: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withValues(alpha: 0.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.account_balance_wallet,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    ),
                                  ),
                                  title: Text(
                                    wallet.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Tap to export seed phrase',
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  trailing: const Icon(Icons.arrow_forward_ios),
                                  onTap: () => _selectWallet(wallet),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/wallet_list_screen.dart';

void main() {
  runApp(const IguanaCageApp());
}

class IguanaCageApp extends StatelessWidget {
  const IguanaCageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Komodo Wallet Migration',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32), // Komodo green
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
      ),
      home: const WalletListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

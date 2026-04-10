import 'package:flutter_test/flutter_test.dart';

import '../bloc/binance_provider.dart';
import '../models/binance_exchange_info.dart';
import '../models/binance_klines.dart';

void main() {
  group('BinanceProvider', () {
    const apiUrl = 'https://api.binance.com/api/v3';

    test('fetchKlines returns BinanceKlinesResponse when successful', () async {
      final BinanceProvider provider = BinanceProvider(apiUrl: apiUrl);
      const String symbol = 'BTCUSDT';
      const String interval = '1m';
      const int limit = 100;

      final BinanceKlinesResponse result =
          await provider.fetchKlines(symbol, interval, limit: limit);

      expect(result, isA<BinanceKlinesResponse>());
      expect(result.klines.isNotEmpty, true);
    });

    test('fetchKlines throws an exception when unsuccessful', () async {
      final BinanceProvider provider = BinanceProvider(apiUrl: apiUrl);
      const String symbol = 'invalid_symbol';
      const String interval = '1m';
      const int limit = 100;

      expect(
        () => provider.fetchKlines(symbol, interval, limit: limit),
        throwsException,
      );
    });

    test('fetchExchangeInfo returns a valid object when successful', () async {
      final BinanceProvider provider = BinanceProvider(apiUrl: apiUrl);

      final BinanceExchangeInfoResponse result =
          await provider.fetchExchangeInfo();

      expect(result, isA<BinanceExchangeInfoResponse>());
      expect(result.timezone, isA<String>());
      expect(result.serverTime, isA<int>());
      expect(result.rateLimits, isA<List<RateLimit>>());
      expect(result.rateLimits.isNotEmpty, true);
      expect(result.symbols, isA<List<Symbol>>());
      expect(result.symbols.isNotEmpty, true);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:komodo_dex/app_config/app_config.dart';
import 'package:komodo_dex/utils/utils.dart';

void main() {
  group('getCoinTicker', () {
    test('returns correct ticker for valid abbreviation', () {
      final String ticker = getCoinTicker('BTC');
      expect(ticker, 'BTC');
    });

    test('returns correct ticker without protocol suffix', () {
      final List<String> symbols = appConfig.protocolSuffixes
          .map((String suffix) => 'KMD-$suffix')
          .toList();
      final List<String> tickers =
          symbols.map((String symbol) => getCoinTicker(symbol)).toList();

      expect(tickers, tickers.map((_) => 'KMD'));
    });

    test(
        'returns correct ticker without protocol suffix, without affecting other symbols',
        () {
      final List<String> symbols = appConfig.protocolSuffixes
          .map((String suffix) => 'KMD-$suffix old_$suffix')
          .toList();
      final List<String> tickers =
          symbols.map((String symbol) => getCoinTicker(symbol)).toList();

      expect(tickers, tickers.map((_) => 'KMD old').toList());
    });

    test('returns the input for invalid abbreviation', () {
      final String ticker = getCoinTicker('XYZ');
      expect(ticker, 'XYZ');
    });
  });
}

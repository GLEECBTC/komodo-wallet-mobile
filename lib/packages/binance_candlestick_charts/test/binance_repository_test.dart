import 'package:flutter_test/flutter_test.dart';

import '../bloc/binance_repository.dart';

void main() {
  group('BinanceRepository', () {
    final BinanceRepository repository = BinanceRepository();

    test('getLegacyOhlcCandleData returns a valid map when successful',
        () async {
      const String symbol = 'eth-btc';

      // Call the method
      final Map<String, dynamic> result =
          await repository.getLegacyOhlcCandleData(symbol);

      final Map<String, dynamic> resultMin =
          (result['60'] as List<Map<String, dynamic>>).first;

      // Perform assertions
      expect(result, isA<Map<String, dynamic>>());
      expect(resultMin.containsKey('open'), true);
      expect(resultMin.containsKey('high'), true);
      expect(resultMin.containsKey('low'), true);
      expect(resultMin.containsKey('close'), true);
      expect(resultMin.containsKey('volume'), true);
    });

    test('getLegacyOhlcCandleData throws an exception when unsuccessful',
        () async {
      // Prepare test data
      const String symbol = 'invalid_symbol/';

      // Call the method and expect an exception to be thrown
      expect(
        () => repository.getLegacyOhlcCandleData(symbol),
        throwsException,
      );
    });

    test('normaliseSymbol returns the correct symbol when given a valid symbol',
        () {
      // Prepare test data
      const String symbol = 'eth-btc';

      // Call the method
      final String result = repository.normaliseSymbol(symbol);

      // Perform assertions
      expect(result, 'ETHBTC');
    });

    test(
        'normaliseSymbol returns a normalised version of the input when given an invalid symbol',
        () {
      // Prepare test data
      const String symbol = 'invalid_symbol/';

      final String result = repository.normaliseSymbol(symbol);

      // Call the method and expect an exception to be thrown
      expect(result, 'INVALID_SYMBOL');
    });
  });
}

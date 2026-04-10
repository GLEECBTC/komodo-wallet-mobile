import 'package:flutter_test/flutter_test.dart';
import 'package:komodo_dex/model/coin.dart';
import 'package:komodo_dex/utils/utils.dart';

void main() {
  group('removeBlockchainPrefix', () {
    test('removes blockchain prefix from address', () {
      const String address = 'eth:0x1234567890abcdef';
      final String result = getAddressFromUri(address);
      expect(result, '0x1234567890abcdef');
    });

    test('removes blackcoin prefix from address', () {
      const String address = 'blackcoin:B8Q9aZ4Mz1ZwWYaknJdZ8t3Z6z9F3Fz1Zz';
      final String result = getAddressFromUri(address);
      expect(result, 'B8Q9aZ4Mz1ZwWYaknJdZ8t3Z6z9F3Fz1Zz');
    });

    test('returns the same address if no prefix is present', () {
      const String address = '0x1234567890abcdef';
      final String result = getAddressFromUri(address);
      expect(result, '0x1234567890abcdef');
    });
  });

  group('getParameterValue', () {
    test('returns the parameter value from the address', () {
      const String address =
          'eth:0x1234567890abcdef?param1=value1&param2=value2';
      const String parameter = 'param1';
      final String result = getParameterValue(address, parameter);
      expect(result, 'value1');
    });

    test('returns null if the parameter is not present in the address', () {
      const String address =
          'eth:0x1234567890abcdef?param1=value1&param2=value2';
      const String parameter = 'param3';
      final String result = getParameterValue(address, parameter);
      expect(result, isNull);
    });

    test('returns null if the address does not contain any parameters', () {
      const String address = 'eth:0x1234567890abcdef';
      const String parameter = 'param1';
      final String result = getParameterValue(address, parameter);
      expect(result, isNull);
    });
  });
}

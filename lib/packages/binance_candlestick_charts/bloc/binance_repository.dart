// Using relative imports in this "package" to make it easier to track external
// dependencies when moving or copying this "package" to another project.
import 'dart:collection';

import './binance_provider.dart';
import '../models/binance_exchange_info.dart';
import '../models/binance_klines.dart';

// Declaring constants here to make this easier to copy & move around
String get binanceApiEndpoint => 'https://api.binance.com/api/v3';
const Map<String, String> defaultCandleIntervalsBinanceMap = <String, String>{
  '60': '1m',
  '180': '3m',
  '300': '5m',
  '900': '15m',
  '1800': '30m',
  '3600': '1h',
  '7200': '2h',
  '14400': '4h',
  '21600': '6h',
  '43200': '12h',
  '86400': '1d',
  '259200': '3d',
  '604800': '1w',
};

/// A repository class for interacting with the Binance API.
/// This class provides methods to fetch legacy tickers and OHLC candle data.
class BinanceRepository {
  BinanceRepository({BinanceProvider binanceProvider})
      : _binanceProvider =
            binanceProvider ?? BinanceProvider(apiUrl: binanceApiEndpoint);

  final BinanceProvider _binanceProvider;

  /// Retrieves a list of tickers in the lowercase, dash-separated format (e.g. eth-btc).
  ///
  /// If the [_symbols] list is not empty, it is returned immediately.
  /// Otherwise, it fetches the exchange information from [_binanceProvider]
  /// and converts the symbols to the legacy hyphenated lowercase format.
  ///
  /// Returns a list of tickers.
  Future<List<String>> getLegacyTickers() async {
    final BinanceExchangeInfoResponse exchangeInfo =
        await _binanceProvider.fetchExchangeInfo();
    if (exchangeInfo == null) {
      return [];
    }

    // The legacy candlestick implementation uses hyphenated lowercase
    // symbols, so we convert the symbols to that format here.
    final List<String> _symbols = exchangeInfo.symbols
        .where((Symbol symbol) => symbol.status.toUpperCase() == 'TRADING')
        .map(
          (Symbol symbol) =>
              '${symbol.baseAsset}-${symbol.quoteAsset}'.toLowerCase(),
        )
        .toList();
    _symbols.sort();
    return _symbols;
  }

  /// Fetches the legacy OHLC (Open-High-Low-Close) candle data for a given symbol.
  /// The candle data is fetched for the specified durations.
  /// If no durations are provided, it fetches the data for all default durations.
  /// Returns a map of durations to the corresponding candle data.
  ///
  /// Parameters:
  /// - symbol: The symbol for which to fetch the candle data.
  /// - ohlcDurations: The durations for which to fetch the candle data. If not provided, it fetches the data for all default durations.
  /// - limit: The maximum number of candles to fetch for each duration. The default is 500, and the maximum is 1000.
  ///
  /// Returns:
  /// A map of durations to the corresponding candle data.
  ///
  /// Example usage:
  /// ```dart
  /// final Map<String, dynamic> candleData = await getLegacyOhlcCandleData('btc-usdt', ohlcDurations: ['1m', '5m', '1h']);
  /// ```
  Future<Map<String, dynamic>> getLegacyOhlcCandleData(
    String symbol, {
    List<String> ohlcDurations,
    int limit = 500,
  }) async {
    final Map<String, dynamic> ohlcData = <String, dynamic>{
      ...defaultCandleIntervalsBinanceMap
    };

    // The Binance API requires the symbol to be in uppercase and without any
    // special characters, so we remove them here.
    symbol = normaliseSymbol(symbol);
    ohlcDurations ??= defaultCandleIntervalsBinanceMap.keys.toList();

    await Future.wait<void>(
      ohlcDurations.map(
        (String duration) async {
          final BinanceKlinesResponse klinesResponse =
              await _binanceProvider.fetchKlines(
            symbol,
            defaultCandleIntervalsBinanceMap[duration],
            limit: limit,
          );

          if (klinesResponse != null) {
            // Sort the klines in descending order of close time.
            // This is necessary for the Candlestick chart to display the data correctly.
            klinesResponse.klines.sort(
              (BinanceKline a, BinanceKline b) =>
                  b.closeTime.compareTo(a.closeTime),
            );

            ohlcData[duration] = klinesResponse.klines
                .map((BinanceKline kline) => kline.toMap())
                .toList();
          } else {
            ohlcData[duration] = <Map<String, dynamic>>[];
          }
        },
      ),
    );

    ohlcData['604800_Monday'] = ohlcData['604800'];

    return ohlcData;
  }

  /// Normalizes the given [symbol] by removing special characters and converting it to uppercase.
  ///
  /// The Binance API requires the symbol to be in uppercase and without any special characters.
  /// This method removes any dashes or slashes from the symbol and converts it to uppercase.
  /// Returns the normalized symbol.
  String normaliseSymbol(String symbol) {
    return symbol.replaceAll(RegExp(r'[-/]'), '').toUpperCase();
  }
}

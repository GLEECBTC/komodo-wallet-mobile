import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/binance_exchange_info.dart';
import '../models/binance_klines.dart';

/// A provider class for fetching data from the Binance API.
class BinanceProvider {
  BinanceProvider({this.apiUrl = 'https://api.binance.com/api/v3'});

  /// The base URL for the Binance API. Defaults to 'https://api.binance.com/api/v3'.
  final String apiUrl;

  /// Fetches candlestick chart data from Binance API.
  ///
  /// Retrieves the candlestick chart data for a specific symbol and interval from the Binance API.
  /// Optionally, you can specify the start time, end time, and limit of the data to fetch.
  ///
  /// Parameters:
  /// - [symbol]: The trading symbol for which to fetch the candlestick chart data.
  /// - [interval]: The time interval for the candlestick chart data (e.g., '1m', '1h', '1d').
  /// - [startTime]: The start time (in milliseconds since epoch, Unix time) of the data range to fetch (optional).
  /// - [endTime]: The end time (in milliseconds since epoch, Unix time) of the data range to fetch (optional).
  /// - [limit]: The maximum number of data points to fetch (optional). Defaults to 500, maximum is 1000.
  ///
  /// Returns:
  /// A [Future] that resolves to a [BinanceKlinesResponse] object containing the fetched candlestick chart data.
  ///
  /// Example usage:
  /// ```dart
  /// final BinanceKlinesResponse klines = await fetchKlines('BTCUSDT', '1h', limit: 100);
  /// ```
  ///
  /// Throws:
  /// - [Exception] if the API request fails.
  Future<BinanceKlinesResponse> fetchKlines(
    String symbol,
    String interval, {
    int startTime,
    int endTime,
    int limit,
  }) async {
    final Map<String, dynamic> queryParameters = <String, dynamic>{
      'symbol': symbol,
      'interval': interval,
      if (startTime != null) 'startTime': startTime.toString(),
      if (endTime != null) 'endTime': endTime.toString(),
      if (limit != null) 'limit': limit.toString(),
    };

    final Uri uri =
        Uri.parse('$apiUrl/klines').replace(queryParameters: queryParameters);

    final http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      return BinanceKlinesResponse.fromJson(
        jsonDecode(response.body) as List<dynamic>,
      );
    } else {
      throw Exception(
        'Failed to load klines: ${response.statusCode} ${response.body}',
      );
    }
  }

  /// Fetches the exchange information from Binance.
  ///
  /// Returns a [Future] that resolves to a [BinanceExchangeInfoResponse] object.
  /// Throws an [Exception] if the request fails.
  Future<BinanceExchangeInfoResponse> fetchExchangeInfo() async {
    final http.Response response = await http.get(
      Uri.parse('$apiUrl/exchangeInfo'),
    );

    if (response.statusCode == 200) {
      return BinanceExchangeInfoResponse.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception(
          'Failed to load symbols: ${response.statusCode} ${response.body}');
    }
  }
}

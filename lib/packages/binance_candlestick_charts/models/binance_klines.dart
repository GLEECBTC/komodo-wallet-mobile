/// Represents the response from the Binance API for klines/candlestick data.
class BinanceKlinesResponse {
  /// Creates a new instance of [BinanceKlinesResponse].
  BinanceKlinesResponse({this.klines});

  /// Creates a new instance of [BinanceKlinesResponse] from a JSON array.
  factory BinanceKlinesResponse.fromJson(List<dynamic> json) {
    return BinanceKlinesResponse(
      klines:
          json.map((dynamic kline) => BinanceKline.fromJson(kline)).toList(),
    );
  }

  /// The list of klines (candlestick data).
  final List<BinanceKline> klines;

  /// Converts the [BinanceKlinesResponse] object to a JSON array.
  List<dynamic> toJson() {
    return klines.map((BinanceKline kline) => kline.toJson()).toList();
  }
}

/// Represents a Binance Kline (candlestick) data.
class BinanceKline {
  /// Creates a new instance of [BinanceKline].
  BinanceKline({
    this.openTime,
    this.open,
    this.high,
    this.low,
    this.close,
    this.volume,
    this.closeTime,
    this.quoteAssetVolume,
    this.numberOfTrades,
    this.takerBuyBaseAssetVolume,
    this.takerBuyQuoteAssetVolume,
  });

  /// Creates a new instance of [BinanceKline] from a JSON array.
  factory BinanceKline.fromJson(List<dynamic> json) {
    return BinanceKline(
      openTime: json[0],
      open: double.parse(json[1]),
      high: double.parse(json[2]),
      low: double.parse(json[3]),
      close: double.parse(json[4]),
      volume: double.parse(json[5]),
      closeTime: json[6],
      quoteAssetVolume: double.parse(json[7]),
      numberOfTrades: json[8],
      takerBuyBaseAssetVolume: double.parse(json[9]),
      takerBuyQuoteAssetVolume: double.parse(json[10]),
    );
  }

  /// Converts the [BinanceKline] object to a JSON array.
  List<dynamic> toJson() {
    return <dynamic>[
      openTime,
      open,
      high,
      low,
      close,
      volume,
      closeTime,
      quoteAssetVolume,
      numberOfTrades,
      takerBuyBaseAssetVolume,
      takerBuyQuoteAssetVolume,
    ];
  }

  /// Converts the kline data into a JSON object like that returned in the previously used OHLC endpoint.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timestamp': openTime,
      'open': open,
      'high': high,
      'low': low,
      'close': close,
      'volume': volume,
      'quote_volume': quoteAssetVolume
    };
  }

  /// The opening time of the kline as a Unix timestamp since epoch (UTC).
  final int openTime;

  /// The opening price of the kline.
  final double open;

  /// The highest price reached during the kline.
  final double high;

  /// The lowest price reached during the kline.
  final double low;

  /// The closing price of the kline.
  final double close;

  /// The trading volume during the kline.
  final double volume;

  /// The closing time of the kline.
  final int closeTime;

  /// The quote asset volume during the kline.
  final double quoteAssetVolume;

  /// The number of trades executed during the kline.
  final int numberOfTrades;

  /// The volume of the asset bought by takers during the kline.
  final double takerBuyBaseAssetVolume;

  /// The quote asset volume of the asset bought by takers during the kline.
  final double takerBuyQuoteAssetVolume;
}

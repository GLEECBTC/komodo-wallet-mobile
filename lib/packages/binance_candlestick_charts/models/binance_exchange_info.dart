/// Represents the response from the Binance Exchange Info API.
class BinanceExchangeInfoResponse {
  BinanceExchangeInfoResponse({
    this.timezone,
    this.serverTime,
    this.rateLimits,
    this.symbols,
  });

  /// Creates a new instance of [BinanceExchangeInfoResponse] from a JSON map.
  factory BinanceExchangeInfoResponse.fromJson(Map<String, dynamic> json) {
    return BinanceExchangeInfoResponse(
      timezone: json['timezone'],
      serverTime: json['serverTime'],
      rateLimits: (json['rateLimits'] as List<dynamic>)
          .map((dynamic v) => RateLimit.fromJson(v))
          .toList(),
      symbols: (json['symbols'] as List<dynamic>)
          .map((dynamic v) => Symbol.fromJson(v))
          .toList(),
    );
  }

  /// The timezone of the server. Defaults to 'UTC'.
  String timezone;

  /// The server time in Unix time (milliseconds).
  int serverTime;

  /// The rate limit types for the API endpoints.
  List<RateLimit> rateLimits;

  /// The list of symbols available on the exchange.
  List<Symbol> symbols;
}

/// Represents a rate limit type for an API endpoint.
class RateLimit {
  RateLimit({
    this.rateLimitType,
    this.interval,
    this.intervalNum,
    this.limit,
  });

  /// Creates a new instance of [RateLimit] from a JSON map.
  RateLimit.fromJson(Map<String, dynamic> json) {
    rateLimitType = json['rateLimitType'];
    interval = json['interval'];
    intervalNum = json['intervalNum'];
    limit = json['limit'];
  }

  /// The type of rate limit.
  String rateLimitType;

  /// The interval of the rate limit.
  String interval;

  /// The number of intervals.
  int intervalNum;

  /// The limit for the rate limit.
  int limit;
}

/// Represents a symbol on the exchange.
class Symbol {
  Symbol({
    this.symbol,
    this.status,
    this.baseAsset,
    this.baseAssetPrecision,
    this.quoteAsset,
    this.quotePrecision,
    this.quoteAssetPrecision,
    this.baseCommissionPrecision,
    this.quoteCommissionPrecision,
    this.orderTypes,
    this.icebergAllowed,
    this.ocoAllowed,
    this.quoteOrderQtyMarketAllowed,
    this.allowTrailingStop,
    this.cancelReplaceAllowed,
    this.isSpotTradingAllowed,
    this.isMarginTradingAllowed,
    this.filters,
    this.permissions,
    this.defaultSelfTradePreventionMode,
    this.allowedSelfTradePreventionModes,
  });

  /// Creates a new instance of [Symbol] from a JSON map.
  factory Symbol.fromJson(Map<String, dynamic> json) {
    return Symbol(
      symbol: json['symbol'],
      status: json['status'],
      baseAsset: json['baseAsset'],
      baseAssetPrecision: json['baseAssetPrecision'],
      quoteAsset: json['quoteAsset'],
      quotePrecision: json['quotePrecision'],
      quoteAssetPrecision: json['quoteAssetPrecision'],
      baseCommissionPrecision: json['baseCommissionPrecision'],
      quoteCommissionPrecision: json['quoteCommissionPrecision'],
      orderTypes: (json['orderTypes'] as List<dynamic>)
          .map((dynamic orderType) => orderType.toString())
          .toList(),
      icebergAllowed: json['icebergAllowed'],
      ocoAllowed: json['ocoAllowed'],
      quoteOrderQtyMarketAllowed: json['quoteOrderQtyMarketAllowed'],
      allowTrailingStop: json['allowTrailingStop'],
      cancelReplaceAllowed: json['cancelReplaceAllowed'],
      isSpotTradingAllowed: json['isSpotTradingAllowed'],
      isMarginTradingAllowed: json['isMarginTradingAllowed'],
      permissions: (json['permissions'] as List<dynamic>)
          .map((dynamic permission) => permission.toString())
          .toList(),
      defaultSelfTradePreventionMode: json['defaultSelfTradePreventionMode'],
      allowedSelfTradePreventionModes:
          (json['allowedSelfTradePreventionModes'] as List<dynamic>)
              .map((dynamic mode) => mode.toString())
              .toList(),
      filters: (json['filters'] as List<dynamic>)
          .map((dynamic v) => Filter.fromJson(v))
          .toList(),
    );
  }

  /// The symbol name.
  String symbol;

  /// The status of the symbol.
  String status;

  /// The base asset of the symbol.
  String baseAsset;

  /// The precision of the base asset.
  int baseAssetPrecision;

  /// The quote asset of the symbol.
  String quoteAsset;

  /// The precision of the quote asset.
  int quotePrecision;

  /// The precision of the quote asset for commission calculations.
  int quoteAssetPrecision;

  /// The precision of the base asset for commission calculations.
  int baseCommissionPrecision;

  /// The precision of the quote asset for commission calculations.
  int quoteCommissionPrecision;

  /// The types of orders supported for the symbol.
  List<String> orderTypes;

  /// Whether iceberg orders are allowed for the symbol.
  bool icebergAllowed;

  /// Whether OCO (One-Cancels-the-Other) orders are allowed for the symbol.
  bool ocoAllowed;

  /// Whether quote order quantity market orders are allowed for the symbol.
  bool quoteOrderQtyMarketAllowed;

  /// Whether trailing stop orders are allowed for the symbol.
  bool allowTrailingStop;

  /// Whether cancel/replace orders are allowed for the symbol.
  bool cancelReplaceAllowed;

  /// Whether spot trading is allowed for the symbol.
  bool isSpotTradingAllowed;

  /// Whether margin trading is allowed for the symbol.
  bool isMarginTradingAllowed;

  /// The filters applied to the symbol.
  List<Filter> filters;

  /// The permissions required to trade the symbol.
  List<String> permissions;

  /// The default self-trade prevention mode for the symbol.
  String defaultSelfTradePreventionMode;

  /// The allowed self-trade prevention modes for the symbol.
  List<String> allowedSelfTradePreventionModes;
}

/// Represents a filter applied to a symbol.
class Filter {
  Filter({
    this.filterType,
    this.minPrice,
    this.maxPrice,
    this.tickSize,
    this.minQty,
    this.maxQty,
    this.stepSize,
    this.limit,
    this.minNotional,
    this.applyMinToMarket,
    this.maxNotional,
    this.applyMaxToMarket,
    this.avgPriceMins,
    this.maxNumOrders,
    this.maxNumAlgoOrders,
  });

  /// Creates a new instance of [Filter] from a JSON map.
  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
      filterType: json['filterType'],
      minPrice: json['minPrice'],
      maxPrice: json['maxPrice'],
      tickSize: json['tickSize'],
      minQty: json['minQty'],
      maxQty: json['maxQty'],
      stepSize: json['stepSize'],
      limit: json['limit'],
      minNotional: json['minNotional'],
      applyMinToMarket: json['applyMinToMarket'],
      maxNotional: json['maxNotional'],
      applyMaxToMarket: json['applyMaxToMarket'],
      avgPriceMins: json['avgPriceMins'],
      maxNumOrders: json['maxNumOrders'],
      maxNumAlgoOrders: json['maxNumAlgoOrders'],
    );
  }

  /// The type of filter.
  String filterType;

  /// The minimum price allowed for the symbol.
  String minPrice;

  /// The maximum price allowed for the symbol.
  String maxPrice;

  /// The tick size for the symbol.
  String tickSize;

  /// The minimum quantity allowed for the symbol.
  String minQty;

  /// The maximum quantity allowed for the symbol.
  String maxQty;

  /// The step size for the symbol.
  String stepSize;

  /// The maximum number of orders allowed for the symbol.
  int limit;

  /// The minimum notional value allowed for the symbol.
  String minNotional;

  /// Whether the minimum notional value applies to market orders.
  bool applyMinToMarket;

  /// The maximum notional value allowed for the symbol.
  String maxNotional;

  /// Whether the maximum notional value applies to market orders.
  bool applyMaxToMarket;

  /// The number of minutes required to calculate the average price.
  int avgPriceMins;

  /// The maximum number of orders allowed for the symbol.
  int maxNumOrders;

  /// The maximum number of algorithmic orders allowed for the symbol.
  int maxNumAlgoOrders;
}

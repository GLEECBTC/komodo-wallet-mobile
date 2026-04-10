import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:komodo_dex/blocs/coins_bloc.dart';
import 'package:komodo_dex/packages/binance_candlestick_charts/bloc/binance_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_config/app_config.dart';
import '../model/coin.dart';
import '../model/coin_type.dart';
import '../model/order_book_provider.dart';
import '../services/mm_service.dart';
import '../utils/log.dart';
import '../utils/utils.dart';

class CexProvider extends ChangeNotifier {
  CexProvider() {
    _updateTickersList();
    _updateRates();

    cexPrices.linkProvider(this);
  }

  bool isChartAvailable(String pair) {
    return _findChain(pair) != null;
  }

  Future<ChartData> getCandles(
    String pair, [
    double duration = 5.0 * 60,
  ]) async {
    if (_charts[pair] == null) {
      await _updateChart(pair);
    } else if (DateTime.now().millisecondsSinceEpoch - _charts[pair].updated >
        duration * 1000) {
      await _updateChart(pair);
    }

    return _charts[pair];
  }

  double getUsdPrice(String abbr) => cexPrices.getUsdPrice(abbr);
  double getCexRate([CoinsPair pair]) => cexPrices.getCexRate(pair);

  String convert(
    double volume, {
    String from,
    String to,
    bool hidden = false,
    bool showSymbol = true,
  }) =>
      cexPrices.convert(
        volume,
        from: from,
        to: to,
        hidden: hidden,
        showSymbol: showSymbol,
      );

  List<String> get fiatList => cexPrices.fiatList;
  String get currency => cexPrices.currencies[cexPrices.activeCurrency];
  String get selectedFiat => cexPrices.selectedFiat;
  String get selectedFiatSymbol => cexPrices.selectedFiatSymbol;
  set selectedFiat(String value) => cexPrices.selectedFiat = value;

  String _withdrawCurrency;
  String get withdrawCurrency => _withdrawCurrency;
  set withdrawCurrency(String value) {
    _withdrawCurrency = value;
    notifyListeners();
  }

  void switchCurrency() {
    int idx = cexPrices.activeCurrency;
    idx++;
    if (idx + 1 > cexPrices.currencies.length) idx = 0;
    cexPrices.activeCurrency = idx;
  }

  void notify() => notifyListeners();

  @override
  void dispose() {
    super.dispose();
    cexPrices.unlinkProvider(this);
  }

  final Map<String, ChartData> _charts = {};
  bool _updatingChart = false;
  List<String> _tickers;
  final BinanceRepository _binanceRepository = BinanceRepository();

  void _updateRates() => cexPrices.updateRates();

  List<String> _getTickers() {
    if (_tickers != null) {
      return _tickers;
    }

    _updateTickersList();
    return _tickersFallBack;
  }

  Future<void> _updateTickersList() async {
    try {
      _tickers = await _binanceRepository.getLegacyTickers();
      notifyListeners();
    } catch (e) {
      Log('cex_provider', 'Failed to fetch tickers list: $e');
    }
  }

  Future<void> _updateChart(String pair) async {
    if (_updatingChart) return;

    final List<ChainLink> chain = _findChain(pair);
    if (chain == null) {
      throw 'No chart data available';
    }

    Map<String, dynamic> json0;
    Map<String, dynamic> json1;

    _updatingChart = true;
    if (_charts[pair] != null) {
      _charts[pair].status = ChartStatus.fetching;
    }
    try {
      json0 = await _fetchChartData(chain[0]);
      if (chain.length > 1) {
        json1 = await _fetchChartData(chain[1]);
      }
    } catch (_) {
      _updatingChart = false;
      if (_charts[pair] != null) {
        _charts[pair]
          ..status = ChartStatus.error
          ..updated = DateTime.now().millisecondsSinceEpoch;
      }
      rethrow;
    }

    _updatingChart = false;

    if (json0 == null) return;
    if (chain.length > 1 && json1 == null) return;

    final Map<String, List<CandleData>> data = {};

    // 'last_updated' field is not a list, so it makes upcoming forEach call fail
    DateTime lastUpdated;
    if (json0.containsKey('last_updated')) {
      lastUpdated =
          DateTime.fromMillisecondsSinceEpoch(json0['last_updated'] * 1000);
      json0.remove('last_updated');
    }

    json0.forEach((String duration, dynamic list) {
      final List<CandleData> _durationData = [];

      for (final Map<String, dynamic> candle in list) {
        double open = chain[0].reverse
            ? 1 / candle['open'].toDouble()
            : candle['open'].toDouble();
        double high = chain[0].reverse
            ? 1 / candle['high'].toDouble()
            : candle['high'].toDouble();
        double low = chain[0].reverse
            ? 1 / candle['low'].toDouble()
            : candle['low'].toDouble();
        double close = chain[0].reverse
            ? 1 / candle['close'].toDouble()
            : candle['close'].toDouble();
        double volume = chain[0].reverse
            ? candle['quote_volume'].toDouble()
            : candle['volume'].toDouble();
        double quoteVolume = chain[0].reverse
            ? candle['volume'].toDouble()
            : candle['quote_volume'].toDouble();
        final int timestamp = candle['timestamp'];

        if (chain.length > 1) {
          dynamic secondCandle;
          try {
            secondCandle =
                json1[duration].toList().firstWhere((dynamic candle) {
              return candle['timestamp'] == timestamp;
            });
          } catch (_) {}

          if (secondCandle == null) continue;

          final double secondOpen = chain[1].reverse
              ? 1 / secondCandle['open'].toDouble()
              : secondCandle['open'].toDouble();
          final double secondHigh = chain[1].reverse
              ? 1 / secondCandle['high'].toDouble()
              : secondCandle['high'].toDouble();
          final double secondLow = chain[1].reverse
              ? 1 / secondCandle['low'].toDouble()
              : secondCandle['low'].toDouble();
          final double secondClose = chain[1].reverse
              ? 1 / secondCandle['close'].toDouble()
              : secondCandle['close'].toDouble();

          final bool reversed =
              chain[0].base == pair.split('-')[1].toLowerCase() ||
                  chain[0].rel == pair.split('-')[1].toLowerCase();

          open = reversed ? 1 / (open * secondOpen) : open * secondOpen;
          close = reversed ? 1 / (close * secondClose) : close * secondClose;
          high = reversed ? 1 / (high * secondHigh) : high * secondHigh;
          low = reversed ? 1 / (low * secondLow) : low * secondLow;
          volume = null;
          quoteVolume = null;
        }

        final CandleData _candleData = CandleData(
          closeTime: timestamp,
          openPrice: open,
          highPrice: high,
          lowPrice: low,
          closePrice: close,
          volume: volume,
          quoteVolume: quoteVolume,
        );
        _durationData.add(_candleData);
      }

      data[duration] = _durationData;
    });

    _charts[pair] = ChartData(
      data: data,
      pair: pair,
      chain: chain,
      status: ChartStatus.success,
      updated: DateTime.now().millisecondsSinceEpoch,
    );
  }

  Future<Map<String, dynamic>> _fetchChartData(ChainLink link) async {
    try {
      final String pair = '${link.rel}-${link.base}';
      final Map<String, dynamic> result =
          await _binanceRepository.getLegacyOhlcCandleData(pair);
      return result;
    } catch (e) {
      Log('cex_provider', 'Failed to fetch data: $e');
      rethrow;
    }
  }

  List<ChainLink> _findChain(String pair) {
    // remove cex postfixes
    pair = getCoinTickerRegex(pair);

    final List<String> abbr = pair.split('-');
    if (abbr[0] == abbr[1]) {
      return null;
    }
    final String base = abbr[1].toLowerCase();
    final String rel = abbr[0].toLowerCase();
    final List<String> tickers = _getTickers();
    List<ChainLink> chain;

    if (tickers == null) {
      return null;
    }

    // try to find simple chain, direct or reverse
    for (final String ticker in tickers) {
      final List<String> availableAbbr = ticker.split('-');
      if (!(availableAbbr.contains(rel) && availableAbbr.contains(base))) {
        continue;
      }
      chain = [
        ChainLink(
          rel: availableAbbr[0],
          base: availableAbbr[1],
          reverse: availableAbbr[0] != rel,
        )
      ];
      break;
    }

    if (chain != null) {
      return chain;
    }

    tickers.sort((String a, String b) {
      if (a.toLowerCase().contains('btc') && !b.toLowerCase().contains('btc')) {
        return -1;
      }
      if (b.toLowerCase().contains('btc') && !a.toLowerCase().contains('btc')) {
        return 1;
      }
      return 0;
    });

    OUTER:
    for (final String firstLinkStr in tickers) {
      final List<String> firstLinkCoins = firstLinkStr.split('-');
      if (!firstLinkCoins.contains(rel) && !firstLinkCoins.contains(base)) {
        continue;
      }
      final ChainLink firstLink = ChainLink(
        rel: firstLinkCoins[0],
        base: firstLinkCoins[1],
        reverse: firstLinkCoins[1] == rel || firstLinkCoins[1] == base,
      );
      final String secondRel =
          firstLink.reverse ? firstLink.rel : firstLink.base;
      final String secondBase = firstLinkCoins.contains(rel) ? base : rel;

      for (final String secondLink in tickers) {
        final List<String> secondLinkCoins = secondLink.split('-');
        if (!(secondLinkCoins.contains(secondRel) &&
            secondLinkCoins.contains(secondBase))) {
          continue;
        }

        chain = [
          firstLink,
          ChainLink(
            rel: secondLinkCoins[0],
            base: secondLinkCoins[1],
            reverse: secondLinkCoins[0] == secondBase ||
                secondLinkCoins[1] == secondRel,
          ),
        ];
        break OUTER;
      }
    }

    if (chain != null) {
      return chain;
    }

    return null;
  }
}

CexPrices cexPrices = CexPrices();

class CexPrices {
  CexPrices() {
    _init();
  }

  bool isInitialized = false;

  Future<void> _init() async {
    if (isInitialized) return;
    prefs = await SharedPreferences.getInstance();
    activeCurrency = prefs.getInt('activeCurrency') ?? 0;
    _selectedFiat = prefs.getString('selectedFiat') ?? 'USD';
    currencies = [_selectedFiat, ...appConfig.coinsFiat];

    Timer.periodic(const Duration(seconds: 60), (_) {
      if (!mmSe.running) return;

      updatePrices();
      updateRates();
    });

    isInitialized = true;
  }

  List<String> currencies;

  int get activeCurrency => _activeCurrency;
  set activeCurrency(int value) {
    _activeCurrency = value;
    prefs?.setInt('activeCurrency', value);
    _notifyListeners();
  }

  String get selectedFiat => _selectedFiat;
  set selectedFiat(String value) {
    if (_isFiat(value)) {
      _selectedFiat = value;
      currencies[0] = value;
      prefs?.setString('selectedFiat', value);
      _notifyListeners();
    }
  }

  String get selectedFiatSymbol {
    if (selectedFiat == null) return null;
    return NumberFormat.simpleCurrency(name: selectedFiat).currencySymbol;
  }

  List<String> get fiatList => _fiatCurrencies?.keys?.toList();

  SharedPreferences prefs;
  String _selectedFiat;
  int _activeCurrency;
  final Map<String, double> _fiatCurrencies = {};
  final List<CexProvider> _providers = [];
  final Map<String, Map<String, double>> _prices = {};
  bool _fetchingPrices = false;

  Future<void> updateRates() async {
    http.Response _res;
    String _body;
    try {
      _res = await http.get(Uri.parse(appConfig.fiatPricesEndpoint)).timeout(
        const Duration(seconds: 60),
        onTimeout: () {
          throw 'Fetching rates timed out';
        },
      );
      _body = _res.body;

      if (_body == null)
        return Log('cex_provider', 'Failed to fetch rates: $_res');
    } catch (e) {
      Log('cex_provider', 'Failed to fetch rates: $e');
    }

    Map<String, dynamic> json;
    try {
      json = jsonDecode(_body);
    } catch (e) {
      Log('cex_provider', 'Failed to parse rates json: $e');
    }

    if (json == null || json['rates'] == null) {
      if (_fiatCurrencies.isEmpty) {
        _fiatCurrencies['USD'] = 1.0;
        selectedFiat = 'USD';
      }
      return;
    }

    json['rates'].forEach((String fiat, dynamic rate) {
      _fiatCurrencies[fiat] = rate;
    });

    _notifyListeners();
  }

  double getUsdPrice(String abbr) {
    if (abbr == 'USD') return 1;
    if (abbr == 'SFUSD') return 1;
    if (_isFiat(abbr)) {
      return 1 / _getFiatRate(abbr);
    }

    double price = 0.0;
    try {
      price = _prices[abbr]['usd'];
    } catch (_) {}

    return price;
  }

  double getCexRate([CoinsPair pair]) {
    pair ??= syncOrderbook.activePair;

    final double buyUsdPrice = getUsdPrice(pair.buy.abbr);
    final double sellUsdPrice = getUsdPrice(pair.sell.abbr);

    if (buyUsdPrice == null || sellUsdPrice == null) return null;
    if (buyUsdPrice == 0.0 || sellUsdPrice == 0.0) return 0.0;

    return sellUsdPrice / buyUsdPrice;
  }

  String convert(
    double volume, {
    String from,
    String to,
    bool hidden = false,
    bool showSymbol = true,
  }) {
    from ??= 'USD';
    to ??= currencies == null ? null : currencies[_activeCurrency];

    if (from == null || to == null) return '';

    final double fromUsdPrice = getUsdPrice(from);
    double convertedVolume;
    if (from == to) {
      convertedVolume = volume;
    } else {
      double convertionPrice;
      try {
        convertionPrice = _prices[from][to.toLowerCase()];
      } catch (_) {}
      final double toUsdPrice = getUsdPrice(to);
      if (toUsdPrice != null && toUsdPrice != 0.00) {
        convertionPrice ??= fromUsdPrice / toUsdPrice;
        convertedVolume = volume * convertionPrice;
      } else {
        convertedVolume = 0.00;
      }
    }

    final String sign = convertedVolume < 0 ? '-' : '';
    convertedVolume = convertedVolume.abs();

    String converted;
    if (_isFiat(to)) {
      converted = convertedVolume.toStringAsFixed(2);
      if (convertedVolume != 0.00 && converted == '0.00')
        converted = formatPrice(convertedVolume, 4);
    } else {
      if (convertedVolume != 0.00 && convertedVolume < 0.00000001)
        convertedVolume = 0.00000001;
      if (convertedVolume > 1) {
        converted = formatPrice(convertedVolume, 9);
      } else if (convertedVolume == 0.00) {
        converted = convertedVolume.toStringAsFixed(2);
      } else {
        converted = convertedVolume.toStringAsFixed(8);
      }
    }

    if (hidden) converted = '**.**';

    final NumberFormat format = NumberFormat.simpleCurrency(name: to);
    final String currencySymbol = format.currencySymbol;

    if (!showSymbol) {
      return converted;
    }
    if (_isFiat(to)) {
      if (currencySymbol.length > 1) {
        return '$sign$converted $currencySymbol';
      } else {
        return '$sign$currencySymbol$converted';
      }
    } else {
      return '$sign$converted $to';
    }
  }

  double _getFiatRate(String abbr) {
    return _fiatCurrencies[abbr];
  }

  bool _isFiat(String abbr) {
    if (abbr == 'USD') return true;
    return _fiatCurrencies[abbr] != null;
  }

  Future<void> updatePrices([List<Coin> coinsList]) async {
    // All available coins, inculding not active.
    final List<Coin> allCoins = (await coins).values.toList();
    final List<String> ids =
        allCoins.map((Coin coin) => coin.coingeckoId).toList();

    for (String abbr in currencies) {
      if (ids.contains(abbr)) continue;

      final Coin coin =
          allCoins.firstWhere((Coin c) => c.abbr == abbr, orElse: () => null);
      if (coin == null) continue;

      ids.add(coin.coingeckoId);
    }

    final String mainUrl = appConfig.cryptoPricesEndpoint;
    final String fallbackUrl =
        appConfig.cryptoPricesFallback + ids.join(',') + '&vs_currencies=usd';

    bool fetched = await _fetchPrices(mainUrl);
    if (!fetched) fetched = await _fetchFallbackPrices(fallbackUrl);
    if (!fetched) return;

    _notifyListeners();
  }

  Future<bool> _fetchPrices(String url) async {
    if (_fetchingPrices) return false;
    _fetchingPrices = true;
    http.Response _res;
    String _body;
    try {
      _res = await http.get(Uri.parse(url)).timeout(
        const Duration(seconds: 60),
        onTimeout: () {
          Log('cex_provider', 'Fetching usd prices timed out');
          _fetchingPrices = false;
          return;
        },
      );
      _body = _res?.body;
      if (_body == null) {
        _fetchingPrices = false;
        return false;
      }
    } catch (e) {
      Log('cex_provider', 'Failed to fetch usd prices: $e');
    }

    _fetchingPrices = false;

    Map<String, dynamic> json;

    try {
      final isJsonString = _body.startsWith('{');
      json = isJsonString ? jsonDecode(_body) : null;
    } catch (e) {
      Log('cex_provider', 'Failed to parse prices json: $e');
    }

    if (json == null) return false;
    if (json['error'] != null) {
      Log('cex_provider', 'Prices endpoint error: ${json['error']}');
      return false;
    }

    // All available coins, inculding not active.
    final List<Coin> allCoins = (await coins).values.toList();

    json.forEach((String ticker, dynamic pricesData) {
      // Some coins are presented in multiple networks,
      // like BAT-ERC20 and BAT-BEP20, but have same
      // coingeckoId and same usd price
      final List<Coin> coins = (allCoins.where(
                (Coin coin) => getCoinTickerRegex(coin.abbr) == ticker,
              ) ??
              [])
          .toList();

      // check if coin volume is enough
      const double minVolume = 10000;
      final double lastPrice = double.tryParse(pricesData['last_price']) ?? 0;
      final double volume24h = double.tryParse(pricesData['volume24h']) ?? 0;

      for (final Coin coin in coins) {
        final String coinAbbr = coin.abbr;
        if (coin.type == CoinType.smartChain) {
          // enough_volume for all smartChain tokens is always true :. proceed
        } else if (lastPrice * volume24h < minVolume) {
          // add the coin to minVolume < 10k list
          coinsBloc.coinsWithLessThan10kVol.add(coinAbbr);
          coinsBloc.coinsWithLessThan10kVol =
              coinsBloc.coinsWithLessThan10kVol.toSet().toList();
        }

        _prices[coinAbbr] = {};

        pricesData.forEach((String currency, dynamic price) {
          if (currency != 'last_price') return;

          double priceDouble;
          try {
            // Handle margin cases (e.g. int price, like '22000')
            priceDouble = double.parse(price.toString());
          } catch (_) {
            priceDouble = 0.00;
          }
          _prices[coinAbbr]['usd'] = priceDouble;
        });
      }
    });

    return true;
  }

  Future<bool> _fetchFallbackPrices(String url) async {
    if (_fetchingPrices) return false;
    _fetchingPrices = true;
    http.Response _res;
    String _body;
    try {
      _res = await http.get(Uri.parse(url)).timeout(
        const Duration(seconds: 60),
        onTimeout: () {
          Log('cex_provider', 'Fetching usd prices timed out');
          _fetchingPrices = false;
          return;
        },
      );
      _body = _res.body;
    } catch (e) {
      Log('cex_provider', 'Failed to fetch usd prices: $e');
    }

    _fetchingPrices = false;

    if (_body == null) return false;

    Map<String, dynamic> json;
    try {
      json = jsonDecode(_body);
    } catch (e) {
      Log('cex_provider', 'Failed to parse prices json: $e');
    }
    if (json == null) return false;

    if (json['error'] != null) {
      Log('cex_provider', 'Prices endpoint error: ${json['error']}');
      return false;
    }

    // All available coins, inculding not active.
    final List<Coin> allCoins = (await coins).values.toList();

    json.forEach((String coingeckoId, dynamic pricesData) {
      // Some coins are presented in multiple networks,
      // like BAT-ERC20 and BAT-BEP20, but have same
      // coingeckoId and same usd price
      final List<Coin> coins =
          (allCoins.where((coin) => coin.coingeckoId == coingeckoId) ?? [])
              .toList();

      for (Coin coin in coins) {
        if (!(pricesData['enough_volume'] ?? true)) return;

        final String coinAbbr = coin.abbr;
        _prices[coinAbbr] = {};

        pricesData.forEach((String currency, dynamic price) {
          if (currency == 'enough_volume') return;

          double priceDouble;
          try {
            // Handle margin cases (e.g. int price, like '22000')
            priceDouble = double.parse(price.toString());
          } catch (_) {
            priceDouble = 0.00;
          }
          _prices[coinAbbr][currency] = priceDouble;
        });
      }
    });

    return true;
  }

  void linkProvider(CexProvider provider) {
    _providers.add(provider);
  }

  void unlinkProvider(CexProvider provider) {
    _providers.remove(provider);
  }

  void _notifyListeners() {
    for (final CexProvider provider in _providers) {
      provider.notify();
    }
  }
}

class ChainLink {
  ChainLink({
    this.rel,
    this.base,
    this.reverse,
  });
  String rel;
  String base;
  bool reverse;
}

class ChartData {
  ChartData({
    @required this.data,
    this.pair,
    this.chain,
    this.updated,
    this.status,
  });

  Map<String, List<CandleData>> data;
  String pair;
  List<ChainLink> chain;
  int updated; // timestamp, milliseconds
  ChartStatus status;
}

enum ChartStatus {
  success,
  error,
  fetching,
}

class CandleData {
  CandleData({
    @required this.closeTime,
    @required this.openPrice,
    @required this.highPrice,
    @required this.lowPrice,
    @required this.closePrice,
    this.volume,
    this.quoteVolume,
  });

  int closeTime;
  double openPrice;
  double highPrice;
  double lowPrice;
  double closePrice;
  double volume;
  double quoteVolume;
}

List<String> _tickersFallBack = [
  'eth-btc',
  'eth-usdc',
  'btc-usdc',
  'btc-busd',
  'btc-tusd',
  'bat-btc',
  'bat-eth',
  'bat-usdc',
  'bat-tusd',
  'bat-busd',
  'bch-btc',
  'bch-eth',
  'bch-usdc',
  'bch-tusd',
  'bch-busd',
  'dash-btc',
  'dash-eth',
  'dgb-btc',
  'doge-btc',
  'kmd-btc',
  'kmd-eth',
  'ltc-btc',
  'ltc-eth',
  'ltc-usdc',
  'ltc-tusd',
  'ltc-busd',
  'nav-btc',
  'nav-eth',
  'pax-btc',
  'pax-eth',
  'qtum-btc',
  'qtum-eth',
  'rvn-btc',
  'xzc-btc',
  'xzc-eth',
  'zec-btc',
  'zec-eth',
  'zec-usdc',
  'zec-tusd',
  'zec-busd'
];

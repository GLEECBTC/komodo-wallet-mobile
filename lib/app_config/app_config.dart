import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/feed_provider.dart';
import '../screens/help-feedback/support_channel_item.dart';

AppConfig appConfig = AppConfig();

class AppConfig {
  int get maxCoinsEnabledAndroid => 50;
  int get maxCoinEnabledIOS => 20;

  String get transactionWarningInfoUrl =>
      'https://komodoplatform.com/en/blog/preventing-address-poisoning';

  // number of decimal places for trade amount input fields
  int get tradeFormPrecision => 8;

  int get batteryLevelLow => 30; // show warnign on swap confirmation page
  int get batteryLevelCritical => 20; // swaps disabled

  final String minDartVersion = '2.14.0';

  bool get isDartSdkVersionSupported {
    final currentVersion = RegExp(r'(\d+\.\d+\.\d+)')
        .firstMatch(Platform.version)
        ?.group(1)
        ?.split('.')
        ?.map((e) => int.parse(e))
        ?.toList();

    final minVersion =
        minDartVersion.split('.').map((e) => int.parse(e)).toList();

    if (currentVersion == null) return false;

    for (var i = 0; i < minVersion.length; i++) {
      if (currentVersion[i] < minVersion[i]) return false;
    }

    return true;
  }

  // Brand config below

  String get appName => 'Gleec Wallet';
  String get appCompanyLong => 'Gleec';
  String get appCompanyShort => 'Gleec';

  final bool kIsWalletOnly = !kDebugMode;

  List<String> get defaultCoins => ['GLEEC', 'BTC-segwit', 'KMD'];
  List<String> get coinsFiat => ['BTC-segwit', 'GLEEC'];
  List<String> get walletOnlyCoins => [
        'AAVE-FTM20',
        'AGIX-ERC20',
        'AGIX-PLG20',
        'APE-FTM20',
        'ARRR-BEP20',
        'AVA-BEP20',
        'BAND-FTM20',
        'BBK',
        'BIDR-BEP20',
        'RBTC',
        'BRZ-ERC20_OLD',
        'BRZ-PLG20_OLD',
        'BTT-BEP20',
        'BUSD-AVX20',
        'BUSD-MVR20',
        'BUSD-ERC20',
        'BUSD-BEP20',
        'BUSD-PLG20',
        'CHSB-ERC20',
        'CHSB-PLG20',
        'CRV-FTM20',
        'DAI-FTM20',
        'DAI-MVR20',
        'DFX-PLG20_OLD',
        'ETH-FTM20',
        'GALA-BEP20',
        'HUSD-ERC20',
        'HUSD-HCO20',
        'HUSD-KRC20',
        'HUSD-PLG20',
        'LINK-FTM20',
        'MC-ERC20',
        'MC-BEP20',
        'MINU-BEP20',
        'MM-MVR20',
        'NVC',
        'OCEAN-BEP20',
        'OCEAN-ERC20',
        'OCEAN-PLG20',
        'PAXG-ERC20',
        'PINK',
        'POT',
        'RDD',
        'SNX-FTM20',
        'SUSHI-FTM20',
        'SUSHI-MVR20',
        'SXP-BEP20',
        'SXP-ERC20',
        'TRX-BEP20_OLD',
        'TUSD-BEP20_OLD',
        'TUSD-FTM20',
        'USDC-AVX20_OLD',
        'USDC-FTM20',
        'USDC-MVR20',
        'USDT-MVR20',
        'USDT-FTM20',
        'USDT-AVX20_OLD',
        'USDT-ERC20',
        'WOO-FTM20',
        'XPM',
        'YFI-FTM20',
        'ATOM',
        'OSMO'
      ];

  List<String> get protocolSuffixes => [
        'QRC20',
        'ERC20',
        'BEP20',
        'PLG20',
        'FTM20',
        'HRC20',
        'MVR20',
        'HCO20',
        'KRC20',
        'AVX20',
        'SLP',
        'OLD',
        'IBC_IRIS',
        'IBC_NUCLEUSTEST',
        'segwit',
        'ZHTLC',
      ];
  List<String> get defaultTestCoins => [
        'DOC',
        'MARTY',
        'ZOMBIE',
      ];

  Map<String, String> get allProtocolNames => {
        'utxo': 'UTXO',
        'smartChain': 'Smart Chain',
        'erc': 'Ethereum (ERC-20)',
        'bep': 'Binance (BEP-20)',
        'qrc': 'QTUM (QRC-20)',
        'plg': 'Polygon (PLG-20)',
        'ftm': 'Fantom (FTM-20)',
        'hrc': 'Harmony (HRC-20)',
        'avx': 'Avax (AVX-20)',
        'hco': 'HecoChain (HCO-20)',
        'mvr': 'Moonriver (MVR-20)',
        'krc': 'Kucoin (KRC-20)',
        'ubiq': 'Ubiq',
        'etc': 'Ethereum Classic (ETC)',
        'sbch': 'SmartBCH (SBCH)',
        'slp': 'SLP Tokens',
        'zhtlc': 'ZHTLC',
        'iris': 'Iris Network',
        'cosmos': 'Cosmos Network',
      };

  // ERC: [0]= limit , [1] = gwei
  // smartchains : [0] = fee
  Map<String, List<double>> standardFees = {
    'utxo': [0],
    'smartChain': [0],
    'zhtlc': [0],
    'erc': [0, 0],
    'bep': [0, 0],
    'qrc': [0, 0],
    'plg': [0, 0],
    'ftm': [0, 0],
    'hrc': [0, 0],
    'avx': [0, 0],
    'hco': [0, 0],
    'mvr': [0, 0],
    'krc': [0, 0],
    'ubiq': [0, 0],
    'etc': [0, 0],
    'sbch': [0, 0],
    'slp': [0, 0],
  };

  bool get isSwapShareCardEnabled => true;

  // support channels (showed on help page)
  List<SupportChannel> supportChannels = [
    SupportChannel(
      title: 'CONTACT',
      subtitle: 'Gleec #support',
      link: 'https://gleec.com/contact',
      icon: SizedBox(
        width: 60,
        child: Image.asset('assets/branding/logo_app.png'),
      ),
    ),
  ];

  // endpoint source code:
  // https://github.com/KomodoPlatform/discord_feed_parser
  bool get isFeedEnabled => false;
  String get feedProviderSourceUrl => 'https://komodo.earth/messages';
  NewsSource get defaultNewsSource => NewsSource(
        name: 'Gleec #official-news',
        url:
            'https://discord.com/channels/412898016371015680/412915799251222539',
        pic:
            'https://cdn.discordapp.com/icons/412898016371015680/a_157cb08c4198ad53b9e9b7168c930571.png',
      );

  // endpoint source code (currently same as news feed endpoint):
  // https://github.com/KomodoPlatform/discord_feed_parser
  bool get isUpdateCheckerEnabled => true;
  String get updateCheckerEndpoint => 'https://komodo.earth/adexversion';

  // endpoint source code:
  // https://github.com/KomodoPlatform/mobile_endpoints_proxy/blob/main/main.py#L113
  String get fiatPricesEndpoint =>
      'https://defi-stats.komodo.earth/api/v3/rates/fixer_io';

  // endpoint source code:
  // https://github.com/KomodoPlatform/mobile_endpoints_proxy/blob/main/main.py#L95
  String get cryptoPricesEndpoint =>
      'https://prices.komodo.earth/api/v2/tickers?expire_at=600';
  String get cryptoPricesFallback =>
      'https://api.coingecko.com/api/v3/simple/price?ids=';

  // endpoint source code:
  // https://github.com/KomodoPlatform/CexPricesEndpoint
  String get candlestickTickersList =>
      'https://komodo.earth:3333/api/v1/ohlc/tickers_list';
  String get candlestickData => 'https://komodo.earth:3333/api/v1/ohlc';

  // At the moment (8/24/2020) tx history is disabled on parity nodes,
  // so we switching ETH/ERC20, BNB/BEP20 tx history to
  // the web endpoint
  //
  // API calls:
  // '/api/v1/eth_tx_history/{address}' - ETH transaction history for address
  // '/api/v1/erc_tx_history/{token}/{address}' - ERC20 transaction history
  // endpoint source code:
  // https://github.com/KomodoPlatform/etherscan-mm2-proxy
  String get ethUrl => 'https://komodo.earth:3334/api/v1/eth_tx_history';
  String get ercUrl => 'https://komodo.earth:3334/api/v2/erc_tx_history';
  String get bnbUrl => 'https://komodo.earth:3334/api/v1/bnb_tx_history';
  String get bepUrl => 'https://komodo.earth:3334/api/v2/bep_tx_history';
  String get maticUrl => 'https://komodo.earth:3334/api/v1/plg_tx_history';
  String get plgUrl => 'https://komodo.earth:3334/api/v2/plg_tx_history';
  String get fantomUrl => 'https://komodo.earth:3334/api/v1/ftm_tx_history';
  String get ftmUrl => 'https://komodo.earth:3334/api/v2/ftm_tx_history';
  String get oneUrl => 'https://komodo.earth:3334/api/v1/hrc_tx_history';
  String get hrcUrl => 'https://komodo.earth:3334/api/v2/hrc_tx_history';
  String get movrUrl => 'https://komodo.earth:3334/api/v1/moonriver_tx_history';
  String get mvrUrl => 'https://komodo.earth:3334/api/v2/moonriver_tx_history';
  String get htUrl => 'https://komodo.earth:3334/api/v1/heco_tx_history';
  String get hcoUrl => 'https://komodo.earth:3334/api/v2/heco_tx_history';
  String get kcsUrl => 'https://komodo.earth:3334/api/v1/krc_tx_history';
  String get krcUrl => 'https://komodo.earth:3334/api/v2/krc_tx_history';
  String get etcUrl => 'https://komodo.earth:3334/api/v1/etc_tx_history';
  String get sbchUrl => 'https://komodo.earth:3334/api/v1/sbch_tx_history';
  String get ubqUrl => 'https://komodo.earth:3334/api/v1/ubq_tx_history';
  String get avaxUrl => 'https://komodo.earth:3334/api/v1/avx_tx_history';
  String get avxUrl => 'https://komodo.earth:3334/api/v2/avx_tx_history';

  /// We're using different rpc ports for different wallet packages
  /// in order to allow multiple wallets to run simultaneously.
  int get rpcPort => 7769;
}

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:komodo_dex/app_config/coins_updater.dart';

import '../model/coin_type.dart';
import '../utils/utils.dart';

Future<List<dynamic>> convertCoinsConfigToAppConfig() async {
  final String coins = await CoinUpdater().getConfig();
  Map coinsResponse = jsonDecode(coins);
  List allCoinsList = [];

  coinsResponse.forEach((abbr, coinData) {
    String proto = _getType(coinData['type'], abbr);

    if (_excludedCoins.contains(abbr) || proto == null) {
      return; // unsupported protocols should be skipped
    }

    allCoinsList.add({
      'abbr': abbr,
      'name': coinData['name'],
      'coingeckoId': coinData['coingecko_id'],
      'colorCoin': _getColor(abbr),
      'type': proto,
      'explorerUrl': coinData['explorer_url'],
      'serverList': coinData['nodes'] ??
          coinData['electrum'] ??
          coinData['rpc_urls'] ??
          [],
      'explorer_tx_url': coinData['explorer_tx_url'],
      'explorer_address_url': coinData['explorer_address_url'],
      'testCoin': coinData['is_testnet'] ?? false,
      'walletOnly': coinData['wallet_only'],
      if (coinData['swap_contract_address'] != null)
        'swap_contract_address': coinData['swap_contract_address'],
      if (coinData['contract_address'] != null)
        'contract_address': coinData['contract_address'],
      if (coinData['fallback_swap_contract'] != null)
        'fallback_swap_contract': coinData['fallback_swap_contract'],
      if (coinData['bchd_urls'] != null) 'bchd_urls': coinData['bchd_urls'],
      if (coinData['light_wallet_d_servers'] != null)
        'light_wallet_d_servers': coinData['light_wallet_d_servers'],
      if (coinData['avg_block_time'] != null)
        'avg_block_time': coinData['avg_block_time'],
    });
  });

  return allCoinsList;
}

List<String> get _excludedCoins => [];

String _getType(String coin, String abbr) {
  // absent protocols
  // [RSK Smart Bitcoin, Arbitrum, Moonbeam]
  if (abbr == 'IRIS') return 'iris';
  CoinType type;
  switch (coin) {
    case 'UTXO':
      type = CoinType.utxo;
      break;
    case 'SLP':
      type = CoinType.slp;
      break;
    case 'Smart Chain':
      type = CoinType.smartChain;
      break;
    case 'ERC-20':
      type = CoinType.erc;
      break;
    case 'BEP-20':
      type = CoinType.bep;
      break;
    case 'Matic':
      type = CoinType.plg;
      break;
    case 'FTM-20':
      type = CoinType.ftm;
      break;
    case 'QRC-20':
      type = CoinType.qrc;
      break;
    case 'Moonriver':
      type = CoinType.mvr;
      break;
    case 'HRC-20':
      type = CoinType.hrc;
      break;
    case 'HecoChain':
      type = CoinType.hco;
      break;
    case 'KRC-20':
      type = CoinType.krc;
      break;
    case 'Ethereum Classic':
      type = CoinType.etc;
      break;
    case 'SmartBCH':
      type = CoinType.sbch;
      break;
    case 'Ubiq':
      type = CoinType.ubiq;
      break;
    case 'AVX-20':
      type = CoinType.avx;
      break;
    case 'ZHTLC':
      type = CoinType.zhtlc;
      break;
    case 'TENDERMINT':
      type = CoinType.cosmos;
      break;
    case 'TENDERMINTTOKEN':
      type = CoinType.iris;
      break;
    default:
      return null; // for other protocols not yet added on the mobile
    // they default to null and are not added as a coin , e.g optimism, moonbeam
  }
  return type.name;
}

String _getColor(String coin) {
  Map<String, String> allColors = {
    '1INCH': '#95A7C5',
    'AAVE': '#9C64A6',
    'ABY': '#8B0D10',
    'ABY-OLD': '#8B0D10',
    'ACTN': '#E84142',
    'ADA': '#214D78',
    'ADX': '#1B75BC',
    'AGIX': '#6815FF',
    'AIBC': '#FFC745',
    'ANKR': '#2075E8',
    'ANT': '#33DAE6',
    'APE': '#0052F2',
    'ARPA': '#CCD9E2',
    'ARRR': '#C7A34C',
    'ATOM': '#474B6C',
    'AUR': '#0A6C5E',
    'AVA': '#5B567F',
    'AVAX': '#E84142',
    'AVAXT': '#E84142',
    'AWC': '#31A5F6',
    'AXE': '#C63877',
    'AXS': '#0055D5',
    'BABYDOGE': '#F3AA47',
    'BAL': '#4D4D4D',
    'BAND': '#526BFF',
    'BAT': '#FF5000',
    'BCH': '#8DC351',
    'BET': '#F69B57',
    'BIDR': '#F0B90B',
    'BLK': '#595959',
    'BNB': '#F9D987',
    'BNBT': '#F9D987',
    'BOLI': '#F09E40',
    'BNT': '#0000FF',
    'BOTS': '#F69B57',
    'BRZ': '#B5DEC3',
    'BSTY': '#78570D',
    'BTC': '#E9983C',
    'BTCZ': '#F5B036',
    'BTE': '#FFE201',
    'BTT': '#666666',
    'BTTC': '#666666',
    'BTX': '#FB30A6',
    'BUSD': '#F0B90B',
    'CADC': '#FF6666',
    'CAKE': '#D1884F',
    'CASE': '#FFFF12',
    'CCL': '#FFE400',
    'CDN': '#90191C',
    'CEL': '#4055A6',
    'CELR': '#595959',
    'CENNZ': '#2E87F1',
    'CHIPS': '#598182',
    'CIPHS': '#ECD900',
    'CLC': '#0970DC',
    'COMP': '#00DBA3',
    'CRO': '#243565',
    'CRV': '#517AB5',
    'CRYPTO': '#F58736',
    'CVC': '#3AB03E',
    'CVT': '#4B0082',
    'DAI': '#B68900',
    'DASH': '#008CE7',
    'DEX': '#43B7B6',
    'DGB': '#006AD2',
    'DGC': '#BC7600',
    'DIA': '#B94897',
    'DIMI': '#0BFBE2',
    'DODO': '#FAF621',
    'DOGE': '#C3A634',
    'DOGEDASH': '#C3A634',
    'DOI': '#120641',
    'DOT': '#E80082',
    'DP': '#E41D25',
    'DUST': '#6A032F',
    'ECA': '#A915DC',
    'EFL': '#FF940B',
    'EGLD': '#1D4CB5',
    'EILN': '#1ADEC9',
    'ELF': '#2B5EBB',
    'EMC2': '#00CCFF',
    'ENJ': '#6752C3',
    'EOS': '#4D4D4D',
    'ETC': '#328432',
    'ETH': '#687DE3',
    'ETHR': '#627EEA',
    'EURS': '#2F77ED',
    'FET': '#202944',
    'FIL': '#4CCAD2',
    'FIRO': '#BB2100',
    'FJC': '#00AFEC',
    'FJCB': '#FFCC33',
    'FLOW': '#00EF8B',
    'FLUX': '#2B61D1',
    'FTC': '#FFFFFF',
    'FTM': '#13B5EC',
    'FTMT': '#13B5EC',
    'FUN': '#EF1C70',
    'GALA': '#011B36',
    'GLEEC': '#8C41FF',
    'GLMR': '#F6007C',
    'GMS': '#0BFBE2',
    'GMT': '#E9CB7B',
    'GNO': '#00B0CC',
    'GRMS': '#12B690',
    'GRS': '#377E96',
    'GRT': '#6E54DB',
    'GST': '#D7D7D7',
    'HECO': '#00953F',
    'HOT': '#983EFF',
    'HT': '#00953F',
    'HUSD': '#0075FB',
    'IC': '#72009D',
    'IL8P': '#696969',
    'ILN': '#814EB1',
    'ILNF': '#28873b',
    'ILNSW': '#28873B',
    'INJ': '#17EAE9',
    'IOTA': '#404040',
    'IOTX': '#00CDCE',
    'JCHF': '#D80027',
    'JEUR': '#003399',
    'JGBP': '#C8102E',
    'JJPY': '#BC002D',
    'JPYC': '#16449A',
    'JRT': '#5EFC84',
    'JST': '#B41514',
    'JSTR': '#627EEA',
    'JUMBLR': '#2B4649',
    'KCS': '#25AF90',
    'KMD': '#7490AA',
    'KNC': '#117980',
    'KSM': '#595959',
    'LABS': '#C1F6E1',
    'LBC': '#00775C',
    'LCC': '#068210',
    'LEO': '#F79B2C',
    'LINK': '#356CE4',
    'LOOM': '#48BEFF',
    'LRC': '#32C2F8',
    'LSTR': '#7E3193',
    'LTC': '#BFBBBB',
    'LTFN': '#0099CC',
    'LUNA': '#FFD83D',
    'LYNX': '#0071BA',
    'MANA': '#FF3C6C',
    'MATIC': '#804EE1',
    'MATICTEST': '#804EE1',
    'MCL': '#EA0000',
    'MESH': '#0098DA',
    'MGW': '#854F2F',
    'MINDS': '#687DE3',
    'MIR': '#2C9FEF',
    'MKR': '#1BAF9F',
    'MM': '#F5B700',
    'MONA': '#DEC799',
    'MORTY': '#A4764D',
    'MOVR': '#52CCC9',
    'NAV': '#7D59B5',
    'NEAR': '#595959',
    'NENG': '#BFBBBB',
    'NEXO': '#A3B3D6',
    'NMC': '#186C9D',
    'NVC': '#FCF96D',
    'NYAN': '#008CE7',
    'NZDS': '#1B3044',
    'OCEAN': '#595959',
    'OMG': '#595959',
    'ONE': '#00BEEE',
    'ONT': '#2692AF',
    'PANGEA': '#D88245',
    'PAX': '#408C69',
    'PAXG': '#DABE37',
    'PBC': '#64A3CB',
    'PIC': '#04D9FF',
    'PND': '#EBD430',
    'POWR': '#05BCAA',
    'PPC': '#46BC60',
    'PRCY': '#012828',
    'PRUX': '#FF8000',
    'QC': '#00D7B3',
    'QI': '#FFFFFF',
    'QIAIR': '#FEFEFE',
    'QKC': '#2175B4',
    'QNT': '#000000',
    'QRC20': '#2E9AD0',
    'QTUM': '#2E9AD0',
    'RBTC': '#E9983C',
    'REN': '#595959',
    'REP': '#0E0E21',
    'REV': '#78034D',
    'REVS': '#F69B57',
    'RFOX': '#D83331',
    'RICK': '#A5CBDD',
    'RLC': '#FFE100',
    'RTM': '#B74427',
    'RUNES': '#336699',
    'RVN': '#384182',
    'SAND': '#05C1F4',
    'SBCH': '#74dd54',
    'SFUSD': '#9881B8',
    'SIBM': '#0C4855',
    'SNT': '#596BED',
    'SNX': '#00D1FF',
    'SOL': '#7BFBB5',
    'SOULJA': '#8F734A',
    'SPACE': '#E44C65',
    'STFIRO': '#00D4F7',
    'STORJ': '#2683FF',
    'SUPERNET': '#F69B57',
    'SUSHI': '#E25DA8',
    'SXP': '#FD5F3B',
    'SYS': '#0084C7',
    'TEL': '#1BD8FF',
    'TFT': '#80C7CF',
    'THC': '#819F6F',
    'TKL': '#536E93',
    'TRC': '#096432',
    'TRX': '#F30031',
    'TRYB': '#0929AA',
    'TSL': '#64B082',
    'TUSD': '#2E3181',
    'UBQ': '#00EB90',
    'UIS': '#008DCD',
    'UNI': '#FF007A',
    'UNO': '#2F87BB',
    'USBL': '#279553',
    'USDC': '#317BCB',
    'USDI': '#C29E47',
    'USDT': '#26A17B',
    'UST': '#5493F7',
    'VAL': '#1EEC84',
    'VET': '#18C6FF',
    'VITE': '#007AFF',
    'VOTE2022': '#7490AA',
    'VOTE2023': '#7490AA',
    'VOTE2024': '#7490AA',
    'VRA': '#D70A41',
    'VRM': '#586A7A',
    'VRSC': '#3164D3',
    'WAVES': '#016BFF',
    'WBTC': '#CCCCCC',
    'WCN': '#E49F00',
    'WHIVE': '#FFCC00',
    'WSB': '#FEBB84',
    'WWCN': '#E49F00',
    'XEC': '#273498',
    'XEP': '#0277E5',
    'XLM': '#737373',
    'XMY': '#F01385',
    'XPM': '#A67522',
    'XRG': '#162D50',
    'XRP': '#2E353D',
    'XSGD': '#1048E5',
    'XTZ': '#A8E000',
    'XVC': '#B50126',
    'XVC-OLD': '#B50126',
    'XVS': '#F4BC54',
    'YFI': '#006BE6',
    'YFII': '#FF2A79',
    'ZEC': '#ECB244',
    'ZER': '#FFFFFF',
    'ZET': '#155169',
    'ZET-OLD': '#155169',
    'ZIL': '#42BBB9',
    'ZOMBIE': '#72B001',
    'ZRX': '#302C2C',
    'tBLK': '#595959',
    'tBTC-TEST': '#E9983C',
    'tQTUM': '#2E9AD0'
  };
  String defaultColor = 'F9F9F9';

  return '0xFF${allColors[getCoinTicker(coin)]?.replaceAll('#', '') ?? defaultColor}';

  // todo coins using the [defaultColor]: get their colors
  //  [BANANO, BONE, BTU, CUMMIES, DOGGY, FLOKI, GM, KOIN, PGX, SCA, RSR, ZILLA, INK, SPC, HPY, HLC, QBT, OC, PUT, BEST, CHSB, CHZ, DX, HEX, LEASH, MLN, OKB, PNK, S4F, SHIB, SHR, SKL, SRM, TMTG, TRAC, TTT, UBT, UMA, UOS, UQC, UTK, VGX, XOR, ZINU]
}

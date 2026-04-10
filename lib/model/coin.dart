import 'dart:collection';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:komodo_dex/app_config/coins_updater.dart';

import '../app_config/app_config.dart';
import '../app_config/coin_converter.dart';
import '../blocs/coins_bloc.dart';
import '../model/coin_type.dart';
import '../model/get_active_coin.dart';
import '../utils/log.dart';
import '../utils/utils.dart';

LinkedHashMap<String, Coin> _coins;
bool _coinsInvoked = false;

/// A cached list of coins.
/// Most fields are loaded from “coins.json”.
/// List of coins, their electrums and webs - are loaded from “coins_config.json”.
///
/// For ease of maintenance the coins.json” should be an exact copy of
/// https://github.com/jl777/coins/blob/master/coins,
/// that way we can update it with a simple overwrite.
///
/// A coin can be absent from “coins.json” and fully defined in “coins_config.json”,
/// the “VOTE” coin is currently defined that way.
Future<LinkedHashMap<String, Coin>> get coins async {
  // Protect from loading coins multiple times from parallel green threads.
  if (_coinsInvoked) {
    await pauseUntil(() => _coins != null);
    return _coins;
  }
  _coinsInvoked = true;

  Log('coin:29', 'Loading coins.json…');
  final String cis = await CoinUpdater().getCoins();
  final List<dynamic> cil = json.decode(cis);
  final Map<String, Map<String, dynamic>> cim = {};
  for (dynamic js in cil) cim[js['coin']] = Map<String, dynamic>.from(js);

  Log('coin:36', 'Loading “coins_config.json…');
  final List<dynamic> ccl = await convertCoinsConfigToAppConfig();
  final coins = LinkedHashMap<String, Coin>.of({});
  for (dynamic js in ccl) {
    final String ticker = js['abbr'];
    final config = Map<String, dynamic>.of(js);
    Map<String, dynamic> init = cim[ticker];
    if (init == null) {
      Log('coin:46', 'Coin $ticker is not in coins.json”');
      init = config;
    }
    coins[ticker] = Coin.fromJson(init, config);
  }

  return _coins = coins;
}

class Coin {
  Coin({
    this.type,
    this.abbr,
    this.swapContractAddress,
    this.fallbackSwapContract,
    this.serverList,
  });

  /// Construct the coin from two JSON maps:
  /// [init] is from coins.json, an exact copy of https://github.com/jl777/coins/blob/master/coins;
  /// [config] is from coins_config.json, for fields that are missing from [init].
  Coin.fromJson(Map<String, dynamic> init, Map<String, dynamic> config) {
    init ??= <String, dynamic>{};
    config ??= <String, dynamic>{};

    type = coinTypeFromString(config['type'] ?? '');
    name = config['name'] ?? init['fname'] ?? '';
    txfee = init['txfee'] ?? 0;
    mm2 = init['mm2'] ?? 0;
    abbr = init['coin'] ?? config['abbr'] ?? '';
    coingeckoId = config['coingeckoId'] ?? '';
    testCoin = config['testCoin'] ?? false;
    swapContractAddress =
        config['swap_contract_address'] ?? config['contract_address'] ?? '';
    fallbackSwapContract = config['fallback_swap_contract'] ??
        config['swap_contract_address'] ??
        '';
    colorCoin = config['colorCoin'] ?? '';
    isDefault = appConfig.defaultCoins.contains(abbr);
    walletOnly = appConfig.walletOnlyCoins.contains(abbr);
    if (config['serverList'] != null) {
      serverList = <Server>[];
      config['serverList'].forEach((v) {
        // backward compatibility
        if (v is String) {
          serverList.add(Server.fromJson({'url': v}));
        } else {
          serverList.add(Server.fromJson(v));
        }
      });
    }
    explorerUrl = config['explorerUrl'] is String
        ? config['explorerUrl']
        : config['explorerUrl'].first;
    requiredConfirmations = init['required_confirmations'];
    matureConfirmations = init['mature_confirmations'];
    requiresNotarization = init['requires_notarization'];
    addressFormat = init['address_format'];
    if (init['protocol'] != null) {
      protocol = Protocol.fromJson(init['protocol']);
    }
    if (config['bchd_urls'] != null) {
      bchdUrls = List<String>.from(config['bchd_urls']);
    }
    if (config['light_wallet_d_servers'] != null) {
      lightWalletDServers = List<String>.from(config['light_wallet_d_servers']);
    }
    explorerTxUrl = config['explorer_tx_url'] ?? '';
    explorerAddressUrl = config['explorer_address_url'] ?? '';
    decimals = init['decimals'];
    orderbookTicker = config['orderbook_ticker'];
  }

  // Coin suspended if was activated by user earlier,
  // but failed to activate during current session startup
  bool suspended = false;

  static List<Map<String, dynamic>> getServerList(List<Server> servers) {
    List<Map<String, dynamic>> list = [];
    for (Server server in servers) {
      list.add(server.toJson());
    }
    return list;
  }

  CoinType type;

  String name;
  int txfee;
  double priceUsd;
  int mm2;

  /// Aka "coin", "ticker".
  String abbr;
  String coingeckoId;
  bool testCoin;
  String colorCoin;
  List<String> bchdUrls;
  List<String> lightWalletDServers;
  List<Server> serverList;
  String explorerUrl;
  String swapContractAddress;
  String fallbackSwapContract;

  /// NB: If the initial value is `null` then it might be updated from MM during the coin activation.
  int requiredConfirmations;
  int matureConfirmations;
  bool requiresNotarization;
  Map<String, dynamic> addressFormat;

  // Whether to block disabling this coin
  bool isDefault;

  // Whether to disable swaps for that coin
  bool walletOnly;

  Protocol protocol;
  String explorerTxUrl;
  String explorerAddressUrl;
  int decimals;
  String orderbookTicker;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.name ?? '',
        'name': name ?? '',
        'txfee': txfee ?? 0,
        'priceUSD': priceUsd ?? 0.0,
        'mm2': mm2 ?? 0,
        'abbr': abbr ?? '',
        'coingeckoId': coingeckoId ?? '',
        'testCoin': testCoin ?? false,
        'swap_contract_address': swapContractAddress ?? '',
        'fallback_swap_contract': fallbackSwapContract ?? '',
        'colorCoin': colorCoin ?? '',
        'explorerUrl': explorerUrl ?? '',
        'required_confirmations': requiredConfirmations,
        'mature_confirmations': matureConfirmations,
        'requires_notarization': requiresNotarization,
        'address_format': addressFormat,
        if (serverList != null) 'serverList': getServerList(serverList),
        if (protocol != null) 'protocol': protocol.toJson(),
        if (explorerTxUrl != null) 'explorer_tx_url': explorerTxUrl,
        if (explorerAddressUrl != null)
          'explorer_address_url': explorerAddressUrl,
        if (decimals != null) 'decimals': decimals,
        if (bchdUrls != null)
          'bchd_urls': List<dynamic>.from(bchdUrls.map<String>((x) => x)),
        if (lightWalletDServers != null)
          'light_wallet_d_servers':
              List<dynamic>.from(lightWalletDServers.map<String>((x) => x)),
        if (orderbookTicker != null) 'orderbook_ticker': orderbookTicker
      };

  String getTxFeeSatoshi() {
    int txFeeRes = 0;
    if (txfee != null) {
      txFeeRes = txfee;
    }
    return (txFeeRes / 100000000).toString();
  }

  String get payGasIn {
    // todo (yurii): find reliable way to determine gas coin
    if (abbr == 'ETH') return 'ETH';
    if (abbr == 'ETHR') return 'ETHR';
    if (abbr == 'BNB') return 'BNB';
    if (abbr == 'BNBT') return 'BNBT';

    return protocol?.protocolData?.platform;
  }

  bool get isActive {
    return coinsBloc.getBalanceByAbbr(abbr) != null;
  }
}

class Protocol {
  Protocol({
    this.type,
    this.protocolData,
  });

  Protocol.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['protocol_data'] != null) {
      protocolData = ProtocolData.fromJson(json['protocol_data']);
    }
  }

  String type;
  ProtocolData protocolData;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'type': type,
      if (protocolData != null) 'protocol_data': protocolData.toJson(),
    };
  }
}

class ProtocolData {
  ProtocolData({
    this.platform,
    this.contractAddress,
  });

  ProtocolData.fromJson(Map<String, dynamic> json) {
    platform = json['platform'];
    contractAddress = json['contract_address'];
    slpPrefix = json['slp_prefix'];
    decimals = json['decimals'];
    tokenId = json['token_id'];
    requiredConfirmations = json['required_confirmations'];
    if (json['check_point_block'] != null)
      checkPointBlock = CheckPointBlock.fromJson(json['check_point_block']);
  }

  String platform;
  String contractAddress;
  String slpPrefix;
  int decimals;
  int requiredConfirmations;
  String tokenId;
  CheckPointBlock checkPointBlock;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (platform != null) 'platform': platform,
      if (contractAddress != null) 'contract_address': contractAddress,
      if (slpPrefix != null) 'slp_prefix': slpPrefix,
      if (decimals != null) 'decimals': decimals,
      if (tokenId != null) 'token_id': tokenId,
      if (requiredConfirmations != null)
        'required_confirmations': requiredConfirmations,
      if (checkPointBlock != null)
        'check_point_block': checkPointBlock.toJson(),
    };
  }
}

class CheckPointBlock {
  int height;
  int time;
  String hash;
  String saplingTree;

  CheckPointBlock({this.height, this.time, this.hash, this.saplingTree});

  CheckPointBlock.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    time = json['time'];
    hash = json['hash'];
    saplingTree = json['sapling_tree'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['height'] = height;
    data['time'] = time;
    data['hash'] = hash;
    data['sapling_tree'] = saplingTree;
    return data;
  }
}

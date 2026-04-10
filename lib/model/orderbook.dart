// To parse this JSON data, do
//
//     final orderbook = orderbookFromJson(jsonString);

import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:rational/rational.dart';

import '../blocs/coins_bloc.dart';
import '../utils/utils.dart';

Orderbook orderbookFromJson(String str) => Orderbook.fromJson(json.decode(str));

String orderbookToJson(Orderbook data) => json.encode(data.toJson());

List<Orderbook> orderbooksFromJson(String str) => List<Orderbook>.from(
    json.decode(str).map((dynamic x) => Orderbook.fromJson(x)));

String orderbooksToJson(List<Orderbook> data) => json
    .encode(List<dynamic>.from(data.map<dynamic>((Orderbook x) => x.toJson())));

class Orderbook {
  Orderbook({
    this.bids,
    this.numbids,
    this.asks,
    this.numasks,
    this.askdepth,
    this.base,
    this.rel,
    this.timestamp,
    this.netid,
  });

  factory Orderbook.fromJson(Map<String, dynamic> json) => Orderbook(
        bids: json['bids'] == null
            ? null
            : List<Ask>.from(json['bids']
                    .map((dynamic x) => Ask.fromJson(x, json['rel'])))
                .where((Ask bid) => bid != null)
                .toList(),
        numbids: json['num_bids'] ?? 0,
        asks: json['asks'] == null
            ? null
            : List<Ask>.from(json['asks']
                    .map((dynamic x) => Ask.fromJson(x, json['base'])))
                .where((Ask ask) => ask != null)
                .toList(),
        numasks: json['num_asks'] ?? 0,
        askdepth: json['askdepth'] ?? 0,
        base: json['base'] ?? '',
        rel: json['rel'] ?? '',
        timestamp: json['timestamp'] ?? DateTime.now().millisecond,
        netid: json['net_id'] ?? 0,
      );

  List<Ask> bids;
  int numbids;
  List<Ask> asks;
  int numasks;
  int askdepth;
  String base;
  String rel;
  int timestamp;
  int netid;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'bids': bids == null
            ? null
            : List<dynamic>.from(bids.map<dynamic>((Ask x) => x.toJson())),
        'num_bids': numbids ?? 0,
        'asks': asks == null
            ? null
            : List<dynamic>.from(asks.map<dynamic>((Ask x) => x.toJson())),
        'num_asks': numasks ?? 0,
        'askdepth': askdepth ?? 0,
        'base': base ?? '',
        'rel': rel ?? '',
        'timestamp': timestamp ?? DateTime.now().millisecond,
        'net_id': netid ?? 0,
      };
}

class Ask {
  Ask({
    this.coin,
    this.address,
    this.price,
    this.priceFract,
    this.maxvolume,
    this.maxRelVolume,
    this.maxvolumeFract,
    this.minVolume,
    this.minRelVolume,
    this.pubkey,
    this.age,
    this.zcredits,
  });

  factory Ask.fromJson(Map<String, dynamic> json, [String coin]) {
    if (isInfinite(json['price']['decimal'])) return null;
    if (isInfinite(json['base_min_volume']['decimal'])) return null;

    return Ask(
      coin: coin ?? json['coin'] ?? '',
      address: json['address']['address_data'] ?? 'Shielded',
      price: json['price']['decimal'] ?? 0.0,
      priceFract: json['price']['fraction'],
      maxvolume: deci(json['base_max_volume']['decimal']),
      maxvolumeFract: json['base_max_volume']['fraction'],
      maxRelVolume: deci(json['rel_max_volume']['decimal']),
      minVolume: fract2rat(json['base_min_volume']['fraction']) ??
          Rational.parse(json['base_min_volume']['decimal']),
      minRelVolume: fract2rat(json['rel_min_volume']['fraction']) ??
          Rational.parse(json['rel_min_volume']['decimal']),
      pubkey: json['pubkey'] ?? '',
      age: json['age'] ?? 0,
      zcredits: json['zcredits'] ?? 0,
    );
  }

  /// The coin being bought (rel coin in the request).
  String coin;
  String address;

  /// The price of 1 rel coin (coin being bought) in terms of the base coin
  /// (coin being sold). E.g. If asking for WBTC, the price is the amount of
  /// KMD needed to buy 1 WBTC.
  String price;
  Map<String, dynamic> priceFract;

  /// The maximum amount of the base coin that can be sold
  Map<String, dynamic> maxvolumeFract;

  /// The maximum amount of the base coin that can be sold
  Decimal maxvolume;

  /// The maximum amount of [coin] that can be bought
  Decimal maxRelVolume;

  /// The minimum amount of the base coin that can be sold
  Rational minVolume;

  /// The minimum amount of [coin] that can be bought
  Rational minRelVolume;
  String pubkey;
  int age;
  int zcredits;

  Rational get priceRat {
    return fract2rat(priceFract) ?? Rational.parse(price);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'coin': coin ?? '',
        'address': address == 'Shielded'
            ? {'address_type': 'Shielded'}
            : {'address_data': address},
        'price': {'decimal': price ?? 0.0, 'fraction': priceFract},
        'base_max_volume': {
          'decimal': maxvolume.toString(),
          'fraction': maxvolumeFract,
        },
        'rel_max_volume': {'decimal': maxRelVolume.toString()},
        'base_min_volume': {
          'fraction': rat2fract(minVolume),
        },
        'rel_min_volume': {
          'fraction': rat2fract(minRelVolume),
        },
        'pubkey': pubkey ?? '',
        'age': age ?? 0,
        'zcredits': zcredits ?? 0,
      };

  Rational getReceiveAmount(Rational amountToSell) {
    Rational buyAmount = amountToSell / fract2rat(priceFract);
    final Rational buyBaseAmount = buyAmount * fract2rat(priceFract);

    final Rational maxVolumeBase = fract2rat(maxvolumeFract);
    final Rational maxVolumeRel =
        fract2rat(maxvolumeFract) / fract2rat(priceFract);

    final bool askRelGreaterThanMaxRelVolume = buyAmount >= maxVolumeRel;
    final bool askBaseGreaterThanMaxBaseVolume = buyBaseAmount >= maxVolumeBase;

    if (askRelGreaterThanMaxRelVolume || askBaseGreaterThanMaxBaseVolume) {
      buyAmount = maxVolumeRel;
    }
    return buyAmount;
  }

  Decimal getReceivePrice() => deci('1') / deci(price);

  bool isMine() {
    final String myAddress = coinsBloc.getBalanceByAbbr(coin).balance.address;

    return myAddress.toLowerCase() == address.toLowerCase();
  }
}

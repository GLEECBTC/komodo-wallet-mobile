import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../blocs/coins_bloc.dart';
import '../blocs/main_bloc.dart';
import '../localizations.dart';
import '../model/coin_balance.dart';
import '../model/get_tx_history.dart';
import '../model/rewards_provider.dart';
import '../model/swap.dart';
import '../model/swap_provider.dart';
import '../model/transaction_data.dart';
import '../model/transactions.dart';
import '../services/job_service.dart';
import '../services/mm.dart';
import '../services/mm_service.dart';
import '../utils/log.dart';
import '../utils/utils.dart';

NotifService notifService = NotifService();

class NotifService {
  bool initialized = false;
  MethodChannel chanell = MMService.nativeC;

  final AppLocalizations _localizations = AppLocalizations();
  final Map<String, Swap> _swaps = {};
  List<String> _transactions;
  final List<String> _notifIds = [];

  Future<void> init() async {
    if (initialized) return;
    initialized = true;

    await pauseUntil(() => mmSe.running);

    _subscribeSwapStatus();
    _subscribeTxs();
    _subscribeRewards();
  }

  Future<void> show(NotifObj notif) async {
    if (!mainBloc.isInBackground) return;

    int nativeId;
    if (_notifIds.contains(notif.uid)) {
      nativeId = _notifIds.indexOf(notif.uid);
    } else {
      _notifIds.add(notif.uid);
      nativeId = _notifIds.length - 1;
    }

    try {
      await FlutterLocalNotificationsPlugin().show(
        nativeId,
        notif.title,
        notif.text,
        NotificationDetails(
          android: AndroidNotificationDetails(
            'komodo_dex',
            'Gleec DEX',
            importance: Importance.defaultImportance,
            priority: Priority.defaultPriority,
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: null,
          ),
        ),
      );
    } catch (e) {
      Log('notif_service', 'show] $e');
    }
  }

  Future<void> _subscribeRewards() async {
    await pauseUntil(() => coinsBloc.currentActiveCoin == null, maxMs: 20000);

    jobService.install('checkRewards', 300, (j) async {
      if (!mmSe.running) return;
      final List<RewardsItem> rewards = await MM.getRewardsInfo();
      if (rewards == null || rewards.isEmpty) return;

      for (RewardsItem item in rewards) {
        if (item.stopAt == null) continue;

        final Duration timeLeft = Duration(
            milliseconds:
                item.stopAt * 1000 - DateTime.now().millisecondsSinceEpoch);
        if (timeLeft.inDays < 2 && (item.reward ?? 0) > 0) {
          final String uid = 'rewards_${item.stopAt}';
          if (!_notifIds.contains(uid)) {
            show(NotifObj(
              title: 'Claim your rewards!',
              text: 'KMD Active User Rewards need claim.',
              uid: uid,
            ));
          }

          break;
        }
      }
    });
  }

  Future<void> _subscribeTxs() async {
    jobService.install('checkTransactions', 10, (j) async {
      if (!mmSe.running) return;

      final List<CoinBalance> coins = coinsBloc.coinBalance;
      final List<Transaction> transactions = [];

      for (CoinBalance coin in coins) {
        if (isErcType(coin.coin)) continue;

        final String abbr = coin.coin.abbr;
        final String address = coin.balance.address;
        final dynamic res = await MM.getTransactions(
            mmSe.client,
            GetTxHistory(
              coin: abbr,
              limit: 5,
              fromId: null,
            ));
        if (res is! Transactions) continue;

        for (Transaction tx in res.result?.transactions ?? []) {
          if (tx.to.contains(address)) {
            if (double.parse(tx.myBalanceChange) < 0) continue;
            transactions.add(tx);
          }
        }
      }

      _checkNewTransactions(transactions);
      _saveTransactions(transactions);
    });
  }

  void _checkNewTransactions(List<Transaction> transactions) {
    if (_transactions == null) return;

    for (Transaction tx in transactions) {
      if (_transactions.contains(tx.internalId)) continue;

      final double now = DateTime.now().millisecondsSinceEpoch / 1000;
      if (tx.timestamp > 0 && (now - tx.timestamp > 3600)) continue;

      show(NotifObj(
        title: _localizations.notifTxTitle,
        text: _localizations.notifTxText(tx.coin),
        uid: tx.internalId,
      ));
    }
  }

  void _saveTransactions(List<Transaction> transactions) {
    _transactions ??= [];
    for (Transaction tx in transactions) {
      _transactions.add(tx.internalId);
    }
  }

  void _subscribeSwapStatus() {
    jobService.install('checkSwaps', 10, (j) async {
      if (!mmSe.running) return;

      _checkOrdersStatusChange(swapMonitor.swaps);
      _saveOrders(swapMonitor.swaps);
    });
  }

  void _checkOrdersStatusChange(Iterable<dynamic> swaps) {
    for (Swap swap in swaps) {
      final String uuid = swap.result?.uuid;
      if (uuid == null) return;

      String title;
      String text;

      final myInfo = extractMyInfoFromSwap(swap.result);
      final myCoin = myInfo['myCoin'];
      final otherCoin = myInfo['otherCoin'];

      if (_swaps.containsKey(uuid)) {
        if (_swaps[uuid]?.status == swap.status) return;

        switch (swap.status) {
          case Status.SWAP_SUCCESSFUL:
            {
              title = _localizations.notifSwapCompletedTitle;
              text = _localizations.notifSwapCompletedText(myCoin, otherCoin);
              break;
            }
          case Status.SWAP_FAILED:
            {
              title = _localizations.notifSwapFailedTitle;
              text = _localizations.notifSwapFailedText(myCoin, otherCoin);
              break;
            }
          case Status.TIME_OUT:
            {
              title = _localizations.notifSwapTimeoutTitle;
              text = _localizations.notifSwapTimeoutText(myCoin, otherCoin);
              break;
            }
          default:
            {
              title = _localizations.notifSwapStatusTitle;
              text = '$myCoin/'
                  '$otherCoin'
                  ' ${_translateSwapStatus(swap.status)}';
              break;
            }
        }
      } else {
        switch (swap.status) {
          case Status.ORDER_MATCHED:
            {
              title = _localizations.notifSwapStartedTitle;
              text = _localizations.notifSwapStartedText(myCoin, otherCoin);
              break;
            }
          default:
            {
              return;
            }
        }
      }

      show(NotifObj(
        title: title,
        text: text,
        uid: swap.result.uuid,
      ));
    }
  }

  void _saveOrders(Iterable<Swap> swaps) {
    for (Swap swap in swaps) {
      final String uuid = swap.result?.uuid;
      if (uuid == null) return;

      _swaps[uuid] = swap;
    }
  }

  String _translateSwapStatus(Status status) {
    switch (status) {
      case Status.ORDER_MATCHING:
        return _localizations.orderMatching;
        break;
      case Status.ORDER_MATCHED:
        return _localizations.orderMatched;
        break;
      case Status.SWAP_ONGOING:
        return _localizations.swapOngoing;
        break;
      case Status.SWAP_SUCCESSFUL:
        return _localizations.swapSucceful;
        break;
      case Status.TIME_OUT:
        return _localizations.timeOut;
        break;
      case Status.SWAP_FAILED:
        return _localizations.swapFailed;
        break;
      default:
    }
    return '';
  }
}

class NotifObj {
  NotifObj({
    this.title,
    this.text,
    this.uid,
  });

  String title;
  String text;
  String uid;
}

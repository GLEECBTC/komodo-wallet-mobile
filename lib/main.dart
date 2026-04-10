import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as real_bloc;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_activation_bloc.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_activation_event.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_activation_state.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_notifications.dart';
import 'package:komodo_dex/packages/z_coin_activation/widgets/z_coin_status_list_tile.dart';
import 'package:komodo_dex/services/mm.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_config/app_config.dart';
import '../blocs/authenticate_bloc.dart';
import '../blocs/coins_bloc.dart';
import '../blocs/main_bloc.dart';
import '../blocs/settings_bloc.dart';
import '../drawer/drawer.dart';
import '../localizations.dart';
import '../model/addressbook_provider.dart';
import '../model/cex_provider.dart';
import '../model/coin_balance.dart';
import '../model/feed_provider.dart';
import '../model/intent_data_provider.dart';
import '../model/order_book_provider.dart';
import '../model/rewards_provider.dart';
import '../model/swap_constructor_provider.dart';
import '../model/swap_provider.dart';
import '../model/updates_provider.dart';
import '../model/wallet_security_settings_provider.dart';
import '../screens/authentification/lock_screen.dart';
import '../screens/dex/dex_page.dart';
import '../screens/feed/feed_page.dart';
import '../screens/markets/markets_page.dart';
import '../screens/portfolio/coin_detail/coin_detail.dart';
import '../screens/portfolio/coins_page.dart';
import '../services/lock_service.dart';
import '../services/mm_service.dart';
import '../utils/log.dart';
import '../widgets/bloc_provider.dart';
import '../widgets/build_red_dot.dart';
import 'app_config/theme_data.dart';
import 'model/multi_order_provider.dart';
import 'model/startup_provider.dart';
import 'packages/rebranding/rebranding_provider.dart';
import 'utils/utils.dart';
import 'widgets/shared_preferences_builder.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ensure the Dart version is >= 2.14.0
  assert(appConfig.isDartSdkVersionSupported, '''
    Your Dart SDK version is not supported. 
    Please update your Dart SDK to >= ${appConfig.minDartVersion}.
  ''');

  await applicationDocumentsDirectory;
  await Log.init();

  await Log.appendRawLog('=-' * 20);
  final startupTime = DateTime.now();

  Log('App start time:', startupTime.toIso8601String());

  await startApp();

  // Log('App end time:', DateTime.now().toIso8601String());
  // Log('App closed after:', DateTime.now().difference(startupTime));
  await Log.appendRawLog('=-' * 20);
}

Future<void> startApp() async {
  // TODO: Request permissions right before it's needed when user is
  // activating Z-Coin. Bigger chance that user will accept it.
  await ZCoinProgressNotifications.initNotifications();
  try {
    mmSe.metrics();
    startup.start();

    return runApp(
      real_bloc.BlocProvider(
        create: (context) => ZCoinActivationBloc(),
        child: _myAppWithProviders,
      ),
    );
  } catch (e) {
    Log('main:46', 'startApp] $e');
    rethrow;
  }
}

BlocProvider<AuthenticateBloc> _myAppWithProviders =
    BlocProvider<AuthenticateBloc>(
        bloc: AuthenticateBloc(),
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => SwapProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => OrderBookProvider(),
            ),
            if (appConfig.isFeedEnabled)
              ChangeNotifierProvider(
                create: (context) => FeedProvider(),
              ),
            ChangeNotifierProvider(
              create: (context) => RewardsProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => StartupProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => UpdatesProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => CexProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => AddressBookProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => MultiOrderProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => IntentDataProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => ConstructorProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => walletSecuritySettingsProvider,
            ),
            ChangeNotifierProvider(
              create: (context) => RebrandingProvider(),
            ),
          ],
          child: const MyApp(),
        ));

void _initCheckNetworkStatus() {
  Connectivity().onConnectivityChanged.listen(_checkNetworkStatus);
}

Future<void> _checkNetworkStatus(ConnectivityResult result) async {
  Log('main:101', 'ConnectivityResult: $result');
  if (result == ConnectivityResult.none) {
    mainBloc.setNetworkStatus(NetworkStatus.Offline);
  } else {
    if (!mmSe.running) startup.startMmIfUnlocked();
    if (mainBloc.networkStatus == NetworkStatus.Offline ||
        mainBloc.networkStatus == NetworkStatus.Checking) {
      mainBloc.setNetworkStatus(NetworkStatus.Restored);
      await Future.delayed(const Duration(seconds: 2), () {});
      mainBloc.setNetworkStatus(NetworkStatus.Online);
    }
  }
}

Future<void> _forceCheckNetworkStatus() async {
  mainBloc.setNetworkStatus(NetworkStatus.Checking);
  await Future.delayed(const Duration(seconds: 2), () {});
  final connectivity = await Connectivity().checkConnectivity();
  await _checkNetworkStatus(connectivity);
}

class MyApp extends StatefulWidget {
  const MyApp({Key key, this.password}) : super(key: key);

  final String password;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  void initState() {
    super.initState();
    _initCheckNetworkStatus();
    WidgetsBinding.instance.addObserver(this);

    MM.untilRpcIsUp().then((_) => _requestResync());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.inactive:
        mainBloc.isInBackground = true;
        Log('main', 'lifecycle: inactive');
        lockService.lockSignal(context);
        break;
      case AppLifecycleState.paused:
        Log('main', 'lifecycle: paused');
        mainBloc.isInBackground = true;
        lockService.lockSignal(context);
        break;
      case AppLifecycleState.detached:
        Log('main', 'lifecycle: detached');
        mainBloc.isInBackground = true;
        break;
      case AppLifecycleState.resumed:
        Log('main', 'lifecycle: resumed');
        mainBloc.isInBackground = false;
        lockService.lockSignal(context);
        final didNeedWakeUp = await mmSe.wakeUpSuspendedApi();

        if (didNeedWakeUp) _requestResync();

        break;
    }
  }

  void _requestResync() {
    context
        .read<ZCoinActivationBloc>()
        .add(ZCoinActivationRequested(isResync: true));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
      SystemUiOverlay.top,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: getThemeDark().scaffoldBackgroundColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    // Forward pointer events to LockService.
    return Listener(
        behavior: HitTestBehavior.translucent,
        onPointerDown: (_) => lockService.pointerEvent(context),
        onPointerUp: (_) => lockService.pointerEvent(context),
        child: StreamBuilder<Locale>(
            stream: mainBloc.outcurrentLocale,
            builder:
                (BuildContext context, AsyncSnapshot<Locale> currentLocale) {
              return SharedPreferencesBuilder<dynamic>(
                  pref: 'current_languages',
                  builder: (BuildContext context,
                      AsyncSnapshot<dynamic> prefLocale) {
                    return StreamBuilder<bool>(
                      stream: settingsBloc.outLightTheme,
                      initialData: settingsBloc.isLightTheme,
                      builder: (BuildContext cont,
                          AsyncSnapshot<bool> currentTheme) {
                        return MaterialApp(
                            title: appConfig.appName,
                            localizationsDelegates: const <
                                LocalizationsDelegate<dynamic>>[
                              AppLocalizationsDelegate(),
                              GlobalMaterialLocalizations.delegate,
                              GlobalWidgetsLocalizations.delegate,
                              GlobalCupertinoLocalizations.delegate
                            ],
                            locale: currentLocale.hasData
                                ? currentLocale.data
                                : prefLocale.hasData
                                    ? Locale(prefLocale.data)
                                    : null,
                            supportedLocales: mainBloc.supportedLocales,
                            theme: settingsBloc.isLightTheme
                                ? getThemeLight()
                                : getThemeDark(),
                            initialRoute: '/',
                            routes: <String, Widget Function(BuildContext)>{
                              // When we navigate to the '/' route, build the FirstScreen Widget
                              '/': (BuildContext context) => LockScreen(
                                    context: context,
                                    child: const MyHomePage(),
                                  ),
                            });
                      },
                    );
                  });
            }));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  Timer timer;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  IntentDataProvider _intentDataProvider;

  final List<Widget> _children = <Widget>[
    CoinsPage(),
    if (!appConfig.kIsWalletOnly) DexPage(),
    MarketsPage(),
    if (appConfig.isFeedEnabled) FeedPage()
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _intentDataProvider?.grabData();
      pinScreenOrientation(context);
    });

    _initLanguage();
    lockService.initialize();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    timer?.cancel();
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        _intentDataProvider?.grabData();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    _intentDataProvider ??= Provider.of<IntentDataProvider>(context);

    _handleIntentData(_scaffoldKey);

    return StreamBuilder<int>(
      initialData: mainBloc.currentIndexTab,
      stream: mainBloc.outCurrentIndex,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Scaffold(
          key: _scaffoldKey,
          endDrawer: AppDrawer(context),
          resizeToAvoidBottomInset: true,
          body: _children[snapshot.data],
          bottomNavigationBar: Material(
            elevation: 8.0,
            child: real_bloc.MultiBlocListener(
              listeners: [
                real_bloc.BlocListener<ZCoinActivationBloc,
                    ZCoinActivationState>(
                  listenWhen: ZCoinStatusWidget.listenWhen,
                  listener: ZCoinStatusWidget.listener,
                ),
              ],
              child: Container(
                color: Theme.of(context).colorScheme.surface,
                child: SafeArea(
                  child: networkStatusStreamBuilder(
                    snapshot.data,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _initLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('current_languages') == null) {
      final Locale loc = Localizations.localeOf(context);
      prefs.setString('current_languages', loc.languageCode);
    }
  }

  void _emptyIntentData() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _intentDataProvider.emptyIntentData();
    });
  }

  Future<void> _handleIntentData(GlobalKey<ScaffoldState> scaffoldKey) async {
    final data = _intentDataProvider.intentData;
    if (data == null) return;

    while (coinsBloc.coinBalance.isEmpty) {
      await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    }

    CoinBalance coinBalance;
    if (data.screen == ScreenSelection.Ethereum) {
      coinBalance = coinsBloc.coinBalance
          .firstWhere((cb) => cb.coin.abbr == 'ETH', orElse: () => null);
    } else if (data.screen == ScreenSelection.Bitcoin) {
      coinBalance = coinsBloc.coinBalance
          .firstWhere((cb) => cb.coin.abbr == 'BTC', orElse: () => null);
    } else {
      _emptyIntentData();
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final Uri uri = Uri.tryParse(data.payload);

      if (uri == null) return;

      final PaymentUriInfo uriInfo = PaymentUriInfo.fromUri(uri);

      if (uriInfo == null) return;

      showUriDetailsDialog(
        context,
        uriInfo,
        () {
          Navigator.push<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (context) => CoinDetail(
                coinBalance: coinBalance,
                isSendIsActive: true,
                paymentUriInfo: uriInfo,
              ),
            ),
          );
        },
      );

      _emptyIntentData();
    });
  }

  Widget networkStatusStreamBuilder(int indexTab) {
    final FeedProvider feedProvider =
        appConfig.isFeedEnabled ? Provider.of<FeedProvider>(context) : null;
    final UpdatesProvider updatesProvider =
        Provider.of<UpdatesProvider>(context);
    return StreamBuilder<NetworkStatus>(
      initialData: mainBloc.networkStatus,
      stream: mainBloc.outNetworkStatus,
      builder: (BuildContext context, AsyncSnapshot<NetworkStatus> network) {
        final NetworkStatus networkStatus = network.data;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (networkStatus != NetworkStatus.Online)
              Material(
                color: networkStatus == NetworkStatus.Restored
                    ? Colors.greenAccent
                    : Colors.redAccent,
                child: Container(
                  child: networkStatus == NetworkStatus.Restored
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              AppLocalizations.of(context).internetRestored,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 16, right: 8),
                          child: Row(
                            children: [
                              Text(
                                AppLocalizations.of(context).noInternet,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              // todo:(MRC): Redo connectivity checker UI
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      if (networkStatus ==
                                          NetworkStatus.Checking)
                                        const SizedBox(
                                          height: 16,
                                          width: 16,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 1,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Colors.white),
                                          ),
                                        ),
                                      if (networkStatus ==
                                          NetworkStatus.Checking)
                                        const SizedBox(width: 8),
                                      Text(
                                        AppLocalizations.of(context)
                                            .internetRefreshButton,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: networkStatus == NetworkStatus.Checking
                                    ? null
                                    : () {
                                        _forceCheckNetworkStatus();
                                      },
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTabTapped,
              currentIndex: indexTab,
              elevation: 0,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.account_balance_wallet,
                      key: Key('main-nav-portfolio'),
                    ),
                    label: AppLocalizations.of(context).portfolio),
                if (!appConfig.kIsWalletOnly)
                  BottomNavigationBarItem(
                      icon:
                          const Icon(Icons.swap_vert, key: Key('main-nav-dex')),
                      label: AppLocalizations.of(context).dex),
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.show_chart,
                    key: Key('main-nav-markets'),
                  ),
                  label: AppLocalizations.of(context).marketsTab,
                ),
                if (appConfig.isFeedEnabled)
                  BottomNavigationBarItem(
                      icon: Stack(
                        children: <Widget>[
                          const Icon(Icons.library_books,
                              key: Key('main-nav-feed')),
                          if (feedProvider.hasNewItems) buildRedDot(context),
                        ],
                      ),
                      label: AppLocalizations.of(context).feedTab),
                BottomNavigationBarItem(
                    icon: Stack(
                      children: <Widget>[
                        const Icon(Icons.dehaze, key: Key('main-nav-more')),
                        if (updatesProvider.status != UpdateStatus.upToDate ||
                            context.select<ZCoinActivationBloc, bool>((value) =>
                                value.state is ZCoinActivationInProgess))
                          buildRedDot(context),
                      ],
                    ),
                    label: AppLocalizations.of(context).moreTab),
              ],
            )
          ],
        );
      },
    );
  }

  void onTabTapped(int index) {
    /// [unfocusTextField] doesn't work here,
    /// probably because drawer has different context
    FocusScope.of(context).requestFocus(FocusNode());

    if (index < _children.length) {
      mainBloc.setCurrentIndexTab(index);
    } else {
      _scaffoldKey.currentState.openEndDrawer();
    }
  }
}

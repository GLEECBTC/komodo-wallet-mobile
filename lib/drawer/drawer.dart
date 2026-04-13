import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_activation_bloc.dart';
import 'package:komodo_dex/packages/z_coin_activation/bloc/z_coin_activation_state.dart';
import 'package:komodo_dex/packages/z_coin_activation/widgets/z_coin_status_list_tile.dart';
import '../blocs/settings_bloc.dart';
import '../localizations.dart';
import '../model/cex_provider.dart';
import '../model/wallet.dart';
import '../screens/addressbook/addressbook_page.dart';
import '../screens/authentification/logout_confirmation.dart';
import '../screens/help-feedback/help_page.dart';
import '../screens/settings/currencies_dialog.dart';
import '../screens/settings/select_language_page.dart';
import '../screens/settings/setting_page.dart';
import '../screens/settings/sound_settings_page.dart';
import '../services/db/database.dart';
import '../services/music_service.dart';
import '../widgets/shared_preferences_builder.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer(this.mContext, {Key key}) : super(key: key);

  final BuildContext mContext;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  CexProvider cexProvider;

  @override
  Widget build(BuildContext context) {
    cexProvider = Provider.of<CexProvider>(context);
    double drawerWidth = MediaQuery.of(context).size.width * 0.7;
    if (drawerWidth < 200) drawerWidth = 200;
    final double headerHeight = MediaQuery.of(context).size.height * 0.25;

    final showZCoinStatus = context.select<ZCoinActivationBloc, bool>(
        (ZCoinActivationBloc bloc) => bloc is ZCoinActivationSuccess);

    return SizedBox(
      width: drawerWidth,
      child: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: headerHeight,
              child: DrawerHeader(
                margin: EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    end: Alignment.centerLeft,
                    begin: Alignment.centerRight,
                    stops: <double>[0.01, 1],
                    colors: <Color>[
                      Color.fromRGBO(0, 30, 34, 1),
                      Color.fromRGBO(38, 179, 255, 1),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      flex: 5,
                      child: SvgPicture.asset(
                        'assets/branding/svg/mark_and_text_vertical_white.svg',
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Divider(
                        color: Colors.white,
                        indent: drawerWidth * 0.1,
                        endIndent: drawerWidth * 0.1,
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/svg/wallet.svg',
                            height: 18,
                          ),
                          const SizedBox(width: 4),
                          FutureBuilder<Wallet>(
                              future: Db.getCurrentWallet(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<Wallet> snapshot) {
                                if (!snapshot.hasData) return SizedBox();
                                return Text(
                                  snapshot.data.name,
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                );
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: <Widget>[
                  _buildDrawerItem(
                    title: Text(AppLocalizations.of(context).soundSettingsLink),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) =>
                              SoundSettingsPage(),
                        ),
                      );
                    },
                    leading: const Icon(Icons.audiotrack, size: 16),
                    trailing: IconButton(
                      constraints: BoxConstraints.tightFor(
                        height: 24,
                        width: 24,
                      ),
                      splashRadius: 24,
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                          musicService.on()
                              ? Icons.volume_up
                              : Icons.volume_down,
                          color: musicService.on()
                              ? Theme.of(context).toggleableActiveColor
                              : Theme.of(context).unselectedWidgetColor),
                      onPressed: () {
                        setState(() {
                          musicService.flip();
                        });
                      },
                    ),
                  ),
                  _buildDrawerItem(
                      title: SharedPreferencesBuilder<dynamic>(
                          pref: 'current_languages',
                          builder: (BuildContext context,
                              AsyncSnapshot<dynamic> snapshot) {
                            return Row(
                              children: <Widget>[
                                Text(AppLocalizations.of(context).language),
                                Text(
                                  snapshot.hasData
                                      ? ' (${snapshot.data})'.toUpperCase()
                                      : '',
                                ),
                              ],
                            );
                          }),
                      onTap: () {
                        Navigator.push<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) =>
                                    SelectLanguagePage(
                                      currentLoc:
                                          Localizations.localeOf(context),
                                    )));
                      },
                      leading: const Icon(Icons.language,
                          key: Key('side-nav-language'), size: 16)),
                  _buildDrawerItem(
                      title: Row(
                        children: <Widget>[
                          Text(AppLocalizations.of(context).currency),
                          if (cexProvider.selectedFiat != null)
                            Text(' (${cexProvider.selectedFiat})'),
                        ],
                      ),
                      onTap: () => showCurrenciesDialog(context),
                      leading: cexProvider.selectedFiatSymbol.length > 1
                          ? const Icon(Icons.account_balance_wallet,
                              key: Key('side-nav-currency'), size: 16)
                          : Text(' ${cexProvider.selectedFiatSymbol}')),
                  StreamBuilder<bool>(
                    initialData: settingsBloc.showBalance,
                    stream: settingsBloc.outShowBalance,
                    builder:
                        (BuildContext context, AsyncSnapshot<bool> snapshot) {
                      return SwitchListTile(
                        secondary: const Icon(Icons.money_off, size: 16),
                        title: Text(AppLocalizations.of(context).hideBalance),
                        value: !snapshot.data ?? false,
                        onChanged: (bool dataSwitch) {
                          settingsBloc.setShowBalance(!dataSwitch);
                        },
                      );
                    },
                  ),
                  if (showZCoinStatus) ...[
                    ZCoinStatusWidget(),
                    SizedBox(height: 2),
                  ],
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  _buildDrawerItem(
                      title: Text(AppLocalizations.of(context).addressBook),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) =>
                                    const AddressBookPage()));
                      },
                      leading: const Icon(Icons.import_contacts,
                          key: Key('side-nav-addressbook'), size: 16)),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  _buildDrawerItem(
                      title: Text(AppLocalizations.of(context).settings),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) =>
                                    SettingPage()));
                      },
                      leading: const Icon(Icons.settings,
                          key: Key('side-nav-settings'), size: 16)),
                  _buildDrawerItem(
                      title: Text(AppLocalizations.of(context).helpLink),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) => HelpPage()));
                      },
                      leading: const Icon(Icons.help,
                          key: Key('side-nav-help-feedback'), size: 16)),
                  StreamBuilder<bool>(
                    initialData: settingsBloc.isLightTheme,
                    stream: settingsBloc.outLightTheme,
                    builder:
                        (BuildContext context, AsyncSnapshot<bool> snapshot) {
                      return SwitchListTile(
                        title: Text(AppLocalizations.of(context).switchTheme),
                        secondary: const Icon(Icons.brush, size: 16),
                        value: snapshot.data ?? false,
                        onChanged: (bool dataSwitch) {
                          settingsBloc.setLightTheme(dataSwitch);
                        },
                      );
                    },
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  _buildDrawerItem(
                    leading: const Icon(Icons.exit_to_app,
                        key: Key('side-nav-logout'), size: 16),
                    onTap: () {
                      Navigator.pop(context);
                      showLogoutConfirmation(widget.mContext);
                    },
                    title: Text(AppLocalizations.of(context).logout),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    Function onTap,
    Widget title,
    Widget leading,
    Widget trailing,
  }) {
    trailing ??= const Icon(Icons.chevron_right);

    return ListTile(
      onTap: onTap,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [leading],
      ),
      title: title,
      trailing: trailing,
    );
  }
}

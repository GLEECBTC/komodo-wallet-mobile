import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../app_config/app_config.dart';
import '../../blocs/wallet_bloc.dart';
import '../../localizations.dart';
import '../authentification/new_account_page.dart';
import '../settings/restore_seed_page.dart';
import '../../utils/utils.dart';
import '../../widgets/primary_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({this.isFromRestore = false});

  final bool isFromRestore;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController controller = TextEditingController();
  bool isButtonLoginEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: ListView(
        key: const Key('welcome-scrollable'),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        children: <Widget>[
          SvgPicture.asset(Theme.of(context).brightness == Brightness.light
              ? 'assets/svg_light/welcome_wallet.svg'
              : 'assets/svg/welcome_wallet.svg'),
          SizedBox(height: 4),
          Text(
            AppLocalizations.of(context).welcomeTitle,
            key: const Key('titleCreateWallet'),
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context).to + ' ',
                  style: Theme.of(context).textTheme.subtitle1),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                toInitialUpper(appConfig.appName) + ' ',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ],
          ),
          SizedBox(height: 24),
          Text(
            AppLocalizations.of(context)
                .welcomeInfo(toInitialUpper(appConfig.appName)),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 24),
          TextFormField(
            key: const Key('name-wallet-field'),
            maxLength: 40,
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String str) {
              if (str.isEmpty) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  setState(() {
                    isButtonLoginEnabled = false;
                  });
                });
                return AppLocalizations.of(context).emptyWallet;
              }
              if (str.length > 40) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  setState(() {
                    isButtonLoginEnabled = false;
                  });
                });
                return AppLocalizations.of(context).walletMaxChar;
              }

              final allWallets = walletBloc.wallets;
              if (allWallets != null && allWallets.isNotEmpty) {
                final List<String> walletsNames =
                    allWallets.map((w) => w.name).toList();
                if (walletsNames.contains(str)) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      isButtonLoginEnabled = false;
                    });
                  });
                  return AppLocalizations.of(context).walletInUse;
                }
              }
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  isButtonLoginEnabled = true;
                });
              });
              return null;
            },
            onFieldSubmitted: (String data) => _newPage(),
            autocorrect: false,
            enableInteractiveSelection: true,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context).hintNameYourWallet,
            ),
          ),
          SizedBox(height: 24),
          PrimaryButton(
            onPressed: isButtonLoginEnabled ? () => _newPage() : null,
            text: AppLocalizations.of(context).welcomeLetSetUp,
            key: const Key('welcome-setup'),
          ),
        ],
      ),
    );
  }

  void _newPage() {
    if (isButtonLoginEnabled) {
      walletBloc.initCurrentWallet(controller.text);
      if (widget.isFromRestore) {
        Navigator.push<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => RestoreSeedPage()),
        );
      } else {
        Navigator.push<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
              builder: (BuildContext context) => const NewAccountPage()),
        );
      }
    }
  }
}

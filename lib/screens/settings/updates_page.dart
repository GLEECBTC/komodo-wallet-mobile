import 'dart:io';

import 'package:flutter/material.dart';
import '../../app_config/app_config.dart';
import '../../localizations.dart';
import '../../model/updates_provider.dart';
import '../authentification/lock_screen.dart';
import '../../utils/utils.dart';
import 'package:provider/provider.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({this.refresh = false, this.onSkip});

  final bool refresh;
  final Function onSkip;

  @override
  _UpdatesPageState createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  UpdatesProvider updatesProvider;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.refresh) updatesProvider.check();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    updatesProvider = Provider.of<UpdatesProvider>(context);

    return LockScreen(
      context: context,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
              AppLocalizations.of(context).updatesTitle(appConfig.appName)),
        ),
        body: RefreshIndicator(
          color: Theme.of(context).colorScheme.secondary,
          onRefresh: () async {
            updatesProvider.check();
          },
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            Theme.of(context).brightness == Brightness.light
                                ? 'assets/branding/logo_app_light.png'
                                : 'assets/branding/logo_app.png'),
                        const SizedBox(height: 12),
                        Text(AppLocalizations.of(context).updatesCurrentVersion(
                            updatesProvider.currentVersion)),
                        const SizedBox(height: 4),
                        updatesProvider.isFetching
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                      width: 14,
                                      height: 14,
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2)),
                                  const SizedBox(width: 6),
                                  Text(AppLocalizations.of(context)
                                      .updatesChecking)
                                ],
                              )
                            : updatesProvider.status == UpdateStatus.upToDate
                                ? Text(AppLocalizations.of(context)
                                    .updatesUpToDate)
                                : Text(
                                    AppLocalizations.of(context)
                                            .updatesAvailable +
                                        (updatesProvider.newVersion == null
                                            ? ''
                                            : ': ${updatesProvider.newVersion}'),
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                      ],
                    )),
              ),
              if (updatesProvider.message != null)
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(
                        height: 60,
                      ),
                      Text(updatesProvider.message),
                    ],
                  ),
                ),
              if (updatesProvider.status != UpdateStatus.upToDate &&
                  !updatesProvider.isFetching)
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Platform.isIOS
                              ? launchURL(
                                  'https://testflight.apple.com/join/c2mOLEoC')
                              : launchURL(
                                  'https://play.google.com/store/apps/details?id=com.gleec.gleecdex');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).dialogBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text(AppLocalizations.of(context).updatesUpdate),
                      ),
                      if (updatesProvider.status == UpdateStatus.available ||
                          updatesProvider.status ==
                              UpdateStatus.recommended) ...[
                        const SizedBox(width: 12),
                        ElevatedButton(
                          onPressed: () {
                            if (widget.onSkip != null) widget.onSkip();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).dialogBackgroundColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .color),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text(AppLocalizations.of(context).updatesSkip),
                        )
                      ]
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

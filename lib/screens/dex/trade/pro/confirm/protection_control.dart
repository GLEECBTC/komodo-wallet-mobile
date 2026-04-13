import 'package:flutter/material.dart';
import '../../../../../localizations.dart';
import '../../../../../model/coin.dart';
import '../../../../../model/swap_provider.dart';
import '../../../../../utils/utils.dart';
import 'package:provider/provider.dart';

class ProtectionControl extends StatefulWidget {
  const ProtectionControl({
    @required this.coin,
    this.onChange,
    this.activeColor,
  });

  final Coin coin;
  final Function(ProtectionSettings) onChange;
  final Color activeColor;

  @override
  _ProtectionControlState createState() => _ProtectionControlState();
}

class _ProtectionControlState extends State<ProtectionControl> {
  SwapProvider swapProvider;
  bool useCustom = false;
  bool dpowRequired = false;
  bool dpowAvailable = false;
  final int minConfs = 1;
  final int maxConfs = 5;
  int confs;
  final String dPoWInfoUrl = 'https://gleec.com/';
  final Color warningColor = Colors.red.withAlpha(200);

  @override
  void initState() {
    super.initState();
    setState(() {
      dpowRequired = widget.coin.requiresNotarization ?? false;
      confs = widget.coin.requiredConfirmations ?? minConfs;
      if (confs < minConfs) confs = minConfs;
      if (confs > maxConfs) confs = maxConfs;
    });
  }

  @override
  Widget build(BuildContext context) {
    swapProvider = Provider.of<SwapProvider>(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        dpowAvailable = swapProvider.notarizationAvailable(widget.coin);
      });
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            '${AppLocalizations.of(context).incomingTransactionsProtectionSettings(widget.coin.abbr)}:',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        SizedBox(height: useCustom ? 6 : 0),
        Container(
          color: useCustom
              ? widget.activeColor ?? Theme.of(context).primaryColor
              : null,
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 6,
            bottom: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              useCustom ? _buildConfigs() : _buildDefaults(),
            ],
          ),
        ),
        _buildWarning(),
        _buildToggle(),
      ],
    );
  }

  Widget _buildConfigs() {
    return Column(
      children: <Widget>[
        _buildNotarizaton(),
        Container(
          height: 1,
          color: Theme.of(context).colorScheme.surface,
        ),
        _buildConfirmations(),
      ],
    );
  }

  Widget _buildDefaults() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(
          color: Theme.of(context).highlightColor,
        ),
        bottom: BorderSide(
          color: Theme.of(context).highlightColor,
        ),
      )),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: _builddPowLink(),
              ),
              Text(
                (widget.coin.requiresNotarization ?? false)
                    ? AppLocalizations.of(context).protectionCtrlOn
                    : AppLocalizations.of(context).protectionCtrlOff,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                AppLocalizations.of(context).protectionCtrlConfirmations + ': ',
              )),
              Text(
                (widget.coin.requiresNotarization ?? false)
                    ? AppLocalizations.of(context).protectionCtrlOn
                    : widget.coin.requiredConfirmations == null
                        ? '1'
                        : widget.coin.requiredConfirmations.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _builddPowLink() {
    return GestureDetector(
      onTap: () {
        launchURL(dPoWInfoUrl);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            AppLocalizations.of(context).dPow + ' ',
          ),
          Icon(
            Icons.open_in_new,
            size: 14,
            color: Theme.of(context).colorScheme.secondary.withAlpha(180),
          ),
          const Text(
            ': ',
          ),
        ],
      ),
    );
  }

  Widget _buildToggle() {
    return Row(
      children: <Widget>[
        // todo(MRC): Figure out whether this can be safely replaced with a checkbox
        InkWell(
          onTap: () {
            setState(() {
              useCustom = !useCustom;
            });
            _onChange();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 8,
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  useCustom ? Icons.check_box : Icons.check_box_outline_blank,
                  size: 18,
                ),
                const SizedBox(width: 3),
                Text(
                  AppLocalizations.of(context).protectionCtrlCustom,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWarning() {
    if (useCustom &&
        (widget.coin.requiresNotarization ?? false) &&
        !dpowRequired) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 30,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Icon(
                    Icons.warning,
                    color: warningColor,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    AppLocalizations.of(context).protectionCtrlWarning,
                    style: TextStyle(
                      color: warningColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return SizedBox();
    }
  }

  Widget _buildNotarizaton() {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: <Widget>[
          Opacity(
            opacity: dpowAvailable ? 1 : 0.5,
            child: SwitchListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              value: dpowRequired,
              onChanged: dpowAvailable
                  ? (bool value) {
                      setState(() {
                        dpowRequired = value;
                      });
                      _onChange();
                    }
                  : null,
              title: _builddPowLink(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmations() {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            left: 8,
            right: 12,
            top: 15,
            bottom: 15,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                    AppLocalizations.of(context).protectionCtrlConfirmations +
                        ':'),
              ),
              dpowRequired
                  ? Text(
                      AppLocalizations.of(context).protectionCtrlOn,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  : Text(
                      confs.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
            ],
          ),
        ),
        if (!dpowRequired) _buildSlider(),
      ],
    );
  }

  Widget _buildSlider() {
    return Slider(
        divisions: maxConfs - minConfs,
        label: confs.toString(),
        min: minConfs.toDouble(),
        max: maxConfs.toDouble(),
        value: confs.toDouble(),
        onChanged: (double value) {
          setState(() {
            confs = value.round();
          });
          _onChange();
        });
  }

  void _onChange() {
    if (widget.onChange == null) return;

    final ProtectionSettings protectionSettings = useCustom
        ? ProtectionSettings(
            requiresNotarization: dpowRequired,
            requiredConfirmations: confs,
          )
        : ProtectionSettings(
            requiredConfirmations: widget.coin.requiredConfirmations,
            requiresNotarization: widget.coin.requiresNotarization ?? false,
          );

    widget.onChange(protectionSettings);
  }
}

class ProtectionSettings {
  ProtectionSettings({this.requiresNotarization, this.requiredConfirmations});

  bool requiresNotarization;
  int requiredConfirmations;
}

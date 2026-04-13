import 'package:flutter/material.dart';
import 'package:komodo_dex/packages/rebranding/rebranding_dialog.dart';
import 'package:komodo_dex/packages/rebranding/rebranding_provider.dart';
import 'package:provider/provider.dart';

import '../../../localizations.dart';
import '../../../model/feed_provider.dart';
import '../../feed/news/build_news_item.dart';

class NewsTab extends StatefulWidget {
  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  FeedProvider _feedProvider;
  List<NewsItem> _news;

  @override
  Widget build(BuildContext context) {
    _feedProvider = Provider.of<FeedProvider>(context);
    _news = _feedProvider.getNews();

    final rebrandingProvider = context.watch<RebrandingProvider>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_feedProvider.hasNewItems) {
        _feedProvider.hasNewItems = false;
      }
    });

    if (_news == null) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_news.isEmpty) {
      return Center(
          child: Text(
        AppLocalizations.of(context).feedNotFound,
        style: const TextStyle(fontSize: 13),
      ));
    }

    Widget _buildUpdateIndicator() {
      return _feedProvider.isNewsFetching
          ? const SizedBox(
              height: 1,
              child: LinearProgressIndicator(),
            )
          : Container(height: 1);
    }

    return Column(
      children: <Widget>[
        /*
        if (rebrandingProvider.shouldShowRebrandingNews)
          RebrandingDialog(isModal: false),
        */
        _buildUpdateIndicator(),
        Expanded(
          child: RefreshIndicator(
            color: Theme.of(context).colorScheme.secondary,
            onRefresh: () async {
              final String updateResponse = await _feedProvider.updateNews();
              String message;
              if (updateResponse == 'ok') {
                message = AppLocalizations.of(context).feedUpdated;
              } else {
                message = updateResponse;
              }

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  message,
                  style: TextStyle(color: Theme.of(context).disabledColor),
                ),
                duration: const Duration(seconds: 1),
                action: SnackBarAction(
                  textColor: Theme.of(context).colorScheme.secondary,
                  label: AppLocalizations.of(context).snackbarDismiss,
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                ),
              ));
            },
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                itemCount: _news.length,
                itemBuilder: (BuildContext context, int i) {
                  return BuildNewsItem(_news[i]);
                }),
          ),
        ),
      ],
    );
  }
}

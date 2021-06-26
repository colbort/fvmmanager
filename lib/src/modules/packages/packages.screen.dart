import 'package:flutter/material.dart';
import 'package:sidekick/generated/l10n.dart';
import 'package:sidekick/src/modules/packages/scenes/flutter_favorite.scene.dart';
import 'package:sidekick/src/modules/packages/scenes/github_trending.scene.dart';
import 'package:sidekick/src/modules/packages/scenes/used_packages.scene.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          titleSpacing: 0,
          toolbarHeight: 48,
          title: TabBar(
            labelColor: Theme.of(context).textTheme.bodyText1.color,
            labelPadding: EdgeInsets.zero,
            indicatorColor: Theme.of(context).accentColor,
            tabs: [
              Tab(text: '⚡   ${S.of(context).trending}'),
              Tab(text: '📦   ${S.of(context).mostUsedPackages}'),
              Tab(text: '💙   ${S.of(context).flutterFavorites}'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const TrendingSection(),
            const MostUsedScene(),
            const FlutterFavoriteScene(),
          ],
        ),
      ),
    );
  }
}

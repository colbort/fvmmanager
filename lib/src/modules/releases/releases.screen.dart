import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sidekick/generated/l10n.dart';

import '../../components/atoms/typography.dart';
import '../../components/molecules/version_install_button.dart';
import '../../modules/common/utils/helpers.dart';
import '../common/atoms/sliver_animated_switcher.dart';
import '../common/organisms/screen.dart';
import 'components/channel_showcase_item.dart';
import 'components/release_list_item.dart';
import 'releases.provider.dart';

class ReleasesScreen extends HookWidget {
  const ReleasesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filter = useProvider(filterProvider);
    final versions = useProvider(filterableReleasesProvider);
    final releases = useProvider(releasesStateProvider);

    return SkScreen(
      extendBody: false,
      title: S.of(context).releases,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              // TODO: Check if need to add the height
              height: 80,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.withOpacity(0.1),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 0.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Subheading(S.of(context).master),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Caption(S
                            .of(context)
                            .theCurrentTipoftreeAbsoluteLatestCuttingEdgeBuildUsuallyFunctional),
                      ),
                      const SizedBox(width: 20),
                      VersionInstallButton(releases.master),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 140.0,
            elevation: 1,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            pinned: true,
            excludeHeaderSemantics: true,
            actions: [Container()],
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: releases.channels.map((channel) {
                    return Expanded(
                      child: ChannelShowcaseItem(channel),
                    );
                  }).toList(),
                ),
              ),
            ),
            title: SliverAnimatedSwitcher(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: releases.channels.map((channel) {
                    return Expanded(child: ReleaseListItem(channel));
                  }).toList(),
                ),
              ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(height: 0),
            ),
            automaticallyImplyLeading: false,
            // actions: [Container()],
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Heading(S.of(context).versions),
                      const SizedBox(width: 10),
                      Chip(label: Text(versions.length.toString())),
                    ],
                  ),
                  DropdownButton<String>(
                    value: filter.state.name,
                    icon: const Icon(Icons.filter_list),
                    underline: Container(),
                    items: Filter.values.map((filter) {
                      return DropdownMenuItem(
                        value: filter.name,
                        child: Text(
                          filter.name.capitalize(),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      filter.state = filterFromName(value);
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ReleaseListItem(versions[index]);
            }, childCount: versions.length),
          ),
        ],
      ),
    );
  }
}

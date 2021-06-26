import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:sidekick/generated/l10n.dart';

import '../../dto/release.dto.dart';
import '../../modules/common/atoms/group_tile.dart';
import '../../modules/common/molecules/list_tile.dart';
import '../atoms/cache_date_display.dart';
import '../atoms/typography.dart';

/// Info about Fvm version
class FvmInfoTile extends StatelessWidget {
  /// Constructor
  const FvmInfoTile(
    this.release, {
    Key key,
  }) : super(key: key);

  /// Release
  final ReleaseDto release;

  @override
  Widget build(BuildContext context) {
    if (!release.isCached) {
      return const SizedBox(height: 0);
    }
    return SkGroupTile(
      title: Text(S.of(context).localCacheInformation),
      children: [
        SkListTile(
          title: Text(S.of(context).createdDate),
          trailing: CacheDateDisplay(release),
        ),
        const Divider(height: 0),
        SkListTile(
          title: Text(S.of(context).cacheLocation),
          subtitle: Caption(release.cache.dir.path),
          trailing: IconButton(
            icon: const Icon(
              Icons.open_in_new,
              size: 20,
            ),
            onPressed: () async {
              await OpenFile.open(release.cache.dir.path);
            },
          ),
        ),
      ],
    );
  }
}

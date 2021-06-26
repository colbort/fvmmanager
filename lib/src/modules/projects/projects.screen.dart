import 'package:file_selector/file_selector.dart' as selector;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:sidekick/generated/l10n.dart';

import '../../components/atoms/typography.dart';
import '../../modules/common/utils/notify.dart';
import '../common/atoms/checkbox.dart';
import '../common/atoms/refresh_button.dart';
import '../common/organisms/screen.dart';
import '../settings/settings.provider.dart';
import 'components/project_list_item.dart';
import 'components/projects_empty.dart';
import 'projects.provider.dart';

/// Projects screen
class ProjectsScreen extends HookWidget {
  /// Constructor
  const ProjectsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifier = useProvider(projectsProvider.notifier);
    final projects = useProvider(projectsProvider);
    final settings = useProvider(settingsProvider);

    final filteredProjects = useState(projects);

    Future<void> onRefresh() async {
      await context.read(projectsProvider.notifier).load();
      notify(S.of(context).projectsRefreshed);
    }

    Future<void> handleChooseDirectory() async {
      final directoryPath = await selector.getDirectoryPath(
        confirmButtonText: S.of(context).choose,
      );
      if (directoryPath == null) {
        // Operation was canceled by the user.
        return;
      }
      await notifier.addProject(directoryPath);
    }

    useEffect(() {
      if (settings.sidekick.onlyProjectsWithFvm) {
        filteredProjects.value =
            projects.where((p) => p.pinnedVersion != null).toList();
      } else {
        filteredProjects.value = [...projects];
      }
      return;
    }, [projects, settings.sidekick]);

    return SkScreen(
      title: S.of(context).projects,
      actions: [
        Caption(S.of(context).projectsProjects(projects.length)),
        const SizedBox(width: 10),
        Tooltip(
          message: S.of(context).onlyDisplayProjectsThatHaveVersionsPinned,
          child: SkCheckBox(
            label: S.of(context).fvmOnly,
            value: settings.sidekick.onlyProjectsWithFvm,
            onChanged: (value) {
              settings.sidekick.onlyProjectsWithFvm = value;
              context.read(settingsProvider.notifier).save(settings);
            },
          ),
        ),
        const SizedBox(width: 10),
        RefreshButton(
          onPressed: onRefresh,
        ),
        const SizedBox(width: 10),
        OutlinedButton.icon(
          onPressed: handleChooseDirectory,
          icon: Icon(MdiIcons.plus),
          label: Text(S.of(context).addProject),
        ),
      ],
      child: projects.isEmpty
          ? EmptyProjects()
          : CupertinoScrollbar(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ResponsiveGridList(
                    desiredItemWidth: 290,
                    minSpacing: 0,
                    children: filteredProjects.value.map((project) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: ProjectListItem(
                          project,
                          versionSelect: true,
                          key: Key(project.projectDir.path),
                        ),
                      );
                    }).toList()),
              ),
            ),
    );
  }
}

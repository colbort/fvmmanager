// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  static m0(updateInfoLatest) => "新版本的Sidekick可用(${updateInfoLatest})";

  static m1(itemVersionName) => "频道${itemVersionName}已更新";

  static m2(url) => "无法启动${url}";

  static m3(count) => "${count}";

  static m4(cachedVersions) => "${cachedVersions}版本";

  static m5(packageProjectsCount) => "${packageProjectsCount}项目";

  static m6(projects) => "${projects}项目";

  static m7(releases) => "${releases}版本";

  static m8(updateInfoLatest) => "Sidekick版本${updateInfoLatest}现在可用";

  static m9(itemname) => "这将从您的系统中删除${itemname}缓存";

  static m10(itemVersionName) => "版本${itemVersionName}已安装";

  static m11(itemVersionName) => "版本${itemVersionName}已被删除";

  static m12(itemVersionName) => "版本${itemVersionName}已被设置为全局";

  static m13(itemVersionName) => "版本${itemVersionName}已完成安装";

  static m14(version, projectName) => "版本${version}固定到${projectName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aNewVersionOfSidekickIsAvailableUpdateinfolatest" : m0,
    "addProject" : MessageLookupByLibrary.simpleMessage("添加项目"),
    "addYourFlutterProjectProjectsInformationWillBeDisplayedHere" : MessageLookupByLibrary.simpleMessage("您的Fluuter项目信息将显示在这里"),
    "advanced" : MessageLookupByLibrary.simpleMessage("高级"),
    "analyticsCrashReportSubtitle" : MessageLookupByLibrary.simpleMessage("当flutter命令崩溃时，它会尝试向Google发送一个崩溃报告，以帮助Google在一段时间内改进flutter"),
    "analyticsCrashReporting" : MessageLookupByLibrary.simpleMessage("分析和崩溃报告"),
    "appSettingsHaveBeenReset" : MessageLookupByLibrary.simpleMessage("应用程序设置已重置"),
    "areYouSureYouWantToRemove" : MessageLookupByLibrary.simpleMessage("你确定要删除吗?"),
    "areYouSureYouWantToResetSettings" : MessageLookupByLibrary.simpleMessage("确定要重置设置吗?"),
    "betaChannelDescription" : MessageLookupByLibrary.simpleMessage("从master创建的分支，用于在月初（通常是第一个星期一）发布新的beta版。这将包括Dart的分支、引擎和框架."),
    "betaReleases" : MessageLookupByLibrary.simpleMessage("测试版本"),
    "cacheLocation" : MessageLookupByLibrary.simpleMessage("缓存位置"),
    "cancel" : MessageLookupByLibrary.simpleMessage("取消"),
    "changeThePathTo" : MessageLookupByLibrary.simpleMessage("将路径更改为\n"),
    "changelog" : MessageLookupByLibrary.simpleMessage("变更日志"),
    "channel" : MessageLookupByLibrary.simpleMessage("渠道"),
    "channelItemversionnameHasBeenUpgraded" : m1,
    "channels" : MessageLookupByLibrary.simpleMessage("渠道"),
    "choose" : MessageLookupByLibrary.simpleMessage("选择"),
    "cleanUp" : MessageLookupByLibrary.simpleMessage("清除"),
    "cleanUpTooltip" : MessageLookupByLibrary.simpleMessage("清除未使用版本"),
    "cleanUpUnusedVersions" : MessageLookupByLibrary.simpleMessage("清理未使用的版本"),
    "clickHereToDownload" : MessageLookupByLibrary.simpleMessage("点此处下载"),
    "close" : MessageLookupByLibrary.simpleMessage("关闭"),
    "confirm" : MessageLookupByLibrary.simpleMessage("提交"),
    "copiedToClipboard" : MessageLookupByLibrary.simpleMessage("复制到剪贴板"),
    "couldNotLaunchUrl" : m2,
    "couldNotSaveSettings" : MessageLookupByLibrary.simpleMessage("无法保存设置"),
    "countFound" : m3,
    "createdDate" : MessageLookupByLibrary.simpleMessage("创建日期"),
    "dark" : MessageLookupByLibrary.simpleMessage("暗黑"),
    "dependenciesAfterANewVersionIsInstalled" : MessageLookupByLibrary.simpleMessage("安装新版本后的依赖项"),
    "details" : MessageLookupByLibrary.simpleMessage("详细信息"),
    "devChannelDescription" : MessageLookupByLibrary.simpleMessage("The latest fully-tested build. Usually functional, but see Bad Builds for a list of known \"bad\" dev builds."),
    "devReleases" : MessageLookupByLibrary.simpleMessage("开发版本"),
    "doYouWantToRemoveThemToFreeUpSpace" : MessageLookupByLibrary.simpleMessage("是否要删除它们以释放空间?"),
    "downloadZip" : MessageLookupByLibrary.simpleMessage("下载压缩包"),
    "exploreFlutterReleases" : MessageLookupByLibrary.simpleMessage("Explore Flutter Releases"),
    "flutterFavorites" : MessageLookupByLibrary.simpleMessage("收藏夹"),
    "flutterPathIsPointingTon" : MessageLookupByLibrary.simpleMessage("Flutter PATH is pointing to\n "),
    "flutterSDKGlobalDescription" : MessageLookupByLibrary.simpleMessage("为了访问Flutter设置，需要将Flutter sdk版本设置为全局版本"),
    "flutterSdkNotInstalled" : MessageLookupByLibrary.simpleMessage("Flutter SDK未安装"),
    "fvmOnly" : MessageLookupByLibrary.simpleMessage("仅FVM"),
    "general" : MessageLookupByLibrary.simpleMessage("一般的"),
    "global" : MessageLookupByLibrary.simpleMessage("全局"),
    "globalConfiguration" : MessageLookupByLibrary.simpleMessage("全局配置"),
    "hash" : MessageLookupByLibrary.simpleMessage("Hash"),
    "howToUpdateYourPath" : MessageLookupByLibrary.simpleMessage("如何更新环境变量?"),
    "ifYouWantToFlutterSdkThroughFvm" : MessageLookupByLibrary.simpleMessage("如果你想通过FVM来管理SDK"),
    "inUse" : MessageLookupByLibrary.simpleMessage("已使用"),
    "installedVersions" : MessageLookupByLibrary.simpleMessage("已安装版本"),
    "invalidChanel" : MessageLookupByLibrary.simpleMessage("无效渠道"),
    "language" : MessageLookupByLibrary.simpleMessage("语言"),
    "later" : MessageLookupByLibrary.simpleMessage("稍后"),
    "light" : MessageLookupByLibrary.simpleMessage("高亮"),
    "likes" : MessageLookupByLibrary.simpleMessage("喜欢"),
    "localCacheInformation" : MessageLookupByLibrary.simpleMessage("本地缓存信息"),
    "master" : MessageLookupByLibrary.simpleMessage("Master"),
    "masterChannelDescription" : MessageLookupByLibrary.simpleMessage("The current tip-of-tree, absolute latest cutting edge build. Usually functional, though sometimes we accidentally break things."),
    "mostUsedPackages" : MessageLookupByLibrary.simpleMessage("最常用的软件包"),
    "navButtonDashboard" : MessageLookupByLibrary.simpleMessage("版本管理"),
    "navButtonExplore" : MessageLookupByLibrary.simpleMessage("目录"),
    "navButtonPackages" : MessageLookupByLibrary.simpleMessage("软件包"),
    "navButtonProjects" : MessageLookupByLibrary.simpleMessage("项目"),
    "noFlutterProjectsHaveBeenAddedYet" : MessageLookupByLibrary.simpleMessage("尚未添加Flutter项目"),
    "noFlutterVersionInstalledMessage" : MessageLookupByLibrary.simpleMessage("您当前没有安装任何Flutter SDK版本。此处将显示已安装的版本或频道。"),
    "noPackagesFound" : MessageLookupByLibrary.simpleMessage("找不到软件包"),
    "noResults" : MessageLookupByLibrary.simpleMessage("无结果"),
    "noUnusedFlutterSdkVersionsInstalled" : MessageLookupByLibrary.simpleMessage("未安装未使用的Flutter SDK版本"),
    "notAFlutterProject" : MessageLookupByLibrary.simpleMessage("不是Flutter项目"),
    "notRunning" : MessageLookupByLibrary.simpleMessage("没有运行"),
    "nothingSelected" : MessageLookupByLibrary.simpleMessage("未选择任何内容"),
    "numberOfCachedVersions" : m4,
    "ok" : MessageLookupByLibrary.simpleMessage("确认"),
    "onlyDisplayProjectsThatHaveVersionsPinned" : MessageLookupByLibrary.simpleMessage("仅显示已锁定版本的项目"),
    "open" : MessageLookupByLibrary.simpleMessage("打开"),
    "openTerminalPlayground" : MessageLookupByLibrary.simpleMessage("打开终端"),
    "packageprojectscountProjects" : m5,
    "platforms" : MessageLookupByLibrary.simpleMessage("平台"),
    "playground" : MessageLookupByLibrary.simpleMessage("Playground"),
    "popularity" : MessageLookupByLibrary.simpleMessage("人气"),
    "projects" : MessageLookupByLibrary.simpleMessage("项目"),
    "projectsProjects" : m6,
    "projectsRefreshed" : MessageLookupByLibrary.simpleMessage("项目已刷新"),
    "pubPoints" : MessageLookupByLibrary.simpleMessage("Pub Points"),
    "refresh" : MessageLookupByLibrary.simpleMessage("刷新"),
    "releaseDate" : MessageLookupByLibrary.simpleMessage("发布日期"),
    "releaseNotes" : MessageLookupByLibrary.simpleMessage("发行说明"),
    "releases" : MessageLookupByLibrary.simpleMessage("发布"),
    "releasesVersions" : m7,
    "remove" : MessageLookupByLibrary.simpleMessage("删除"),
    "reset" : MessageLookupByLibrary.simpleMessage("重置"),
    "resetToDefaultSettings" : MessageLookupByLibrary.simpleMessage("恢复默认设置"),
    "sdkHasNotFinishedSetup" : MessageLookupByLibrary.simpleMessage("SDK尚未完成安装"),
    "search" : MessageLookupByLibrary.simpleMessage("搜索... "),
    "selectAFlutterSdkVersion" : MessageLookupByLibrary.simpleMessage("请选择Flutter SDK版本"),
    "selectAThemeOrSwitchAccordingToSystemSettings" : MessageLookupByLibrary.simpleMessage("根据系统设置选择主题"),
    "setAsGlobal" : MessageLookupByLibrary.simpleMessage("设置为全局"),
    "settingsHaveBeenSaved" : MessageLookupByLibrary.simpleMessage("设置已保存"),
    "sha256" : MessageLookupByLibrary.simpleMessage("Sha256"),
    "sidekickVersionUpdateinfolatestIsNowAvailable" : m8,
    "skipSetupFlutterOnInstall" : MessageLookupByLibrary.simpleMessage("安装时跳过Flutter"),
    "stableChannelDescription" : MessageLookupByLibrary.simpleMessage("我们建议您将此频道用于所有生产应用程序版本。大约每季度一次，一个在beta版上稳定的分支将成为下一个稳定的分支，我们将从该分支创建一个稳定的版本."),
    "stableReleases" : MessageLookupByLibrary.simpleMessage("发布版本"),
    "start" : MessageLookupByLibrary.simpleMessage("开始"),
    "system" : MessageLookupByLibrary.simpleMessage("系统"),
    "theCurrentTipoftreeAbsoluteLatestCuttingEdgeBuildUsuallyFunctional" : MessageLookupByLibrary.simpleMessage("The current tip-of-tree, absolute latest cutting edge build. Usually functional, though sometimes we accidentally break things."),
    "theme" : MessageLookupByLibrary.simpleMessage("主题"),
    "thereWasAnIsssueOpeningSidekick" : MessageLookupByLibrary.simpleMessage("打开Sidekick是遇到问题"),
    "thereWasAnIssueLoadingYourPackages" : MessageLookupByLibrary.simpleMessage("加载您的软件包时出现问题"),
    "theseVersionAreNotPinnedToAProject" : MessageLookupByLibrary.simpleMessage("这些版本未固定到项目"),
    "thisWillOnlyCloneFlutterAndNotInstall" : MessageLookupByLibrary.simpleMessage("这将只克隆Flutter而不安装"),
    "thisWillOnlyResetSidekickSpecificPreferences" : MessageLookupByLibrary.simpleMessage("这只会重置特定于Sidekick的首选项"),
    "thisWillRemoveItemnameCacheFromYourSystem" : m9,
    "trending" : MessageLookupByLibrary.simpleMessage("趋势分析"),
    "unused" : MessageLookupByLibrary.simpleMessage("未使用"),
    "updateAvailable" : MessageLookupByLibrary.simpleMessage("可用更新"),
    "updateNow" : MessageLookupByLibrary.simpleMessage("立即更新"),
    "upgrade" : MessageLookupByLibrary.simpleMessage("更新"),
    "version" : MessageLookupByLibrary.simpleMessage("版本"),
    "versionIsInstalled" : MessageLookupByLibrary.simpleMessage("已安装"),
    "versionItemversionnameHasBeenInstalled" : m10,
    "versionItemversionnameHasBeenRemoved" : m11,
    "versionItemversionnameHasBeenSetAsGlobal" : m12,
    "versionItemversionnameHasFinishedSetup" : m13,
    "versionNotInstalledClickToInstall" : MessageLookupByLibrary.simpleMessage("未安装，单击安装"),
    "versionVersionPinnedToProjectname" : m14,
    "versions" : MessageLookupByLibrary.simpleMessage("版本"),
    "viewsource" : MessageLookupByLibrary.simpleMessage("查看"),
    "web" : MessageLookupByLibrary.simpleMessage("网页"),
    "website" : MessageLookupByLibrary.simpleMessage("网站"),
    "youNeedToAddAFlutterProjectFirstPackageInformation" : MessageLookupByLibrary.simpleMessage("您需要先添加一个flutter项目，软件包信息将显示在这里"),
    "zipFileWithAllReleaseDependencies" : MessageLookupByLibrary.simpleMessage("包含所有发布依赖项的Zip文件")
  };
}

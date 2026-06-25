import 'package:maximeze_vpn/core/directories/directories_provider.dart';
import 'package:maximeze_vpn/core/notification/in_app_notification_controller.dart';
import 'package:maximeze_vpn/core/preferences/general_preferences.dart';
import 'package:maximeze_vpn/maximeze-vpncore/maximeze-vpn_core_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maximeze-vpn_core_service_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [AppDirectories, DebugModeNotifier, inAppNotificationController])
Maximeze VPNCoreService maximeze-vpnCoreService(Ref ref) {
  return Maximeze VPNCoreService(ref);
}

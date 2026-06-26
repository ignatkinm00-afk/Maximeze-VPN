import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maximeze_vpn/core/localization/translations.dart';
import 'package:maximeze_vpn/core/router/dialog/dialog_notifier.dart';
import 'package:maximeze_vpn/features/connection/model/connection_status.dart';
import 'package:maximeze_vpn/features/connection/notifier/connection_notifier.dart';
import 'package:maximeze_vpn/features/proxy/active/active_proxy_notifier.dart';
import 'package:maximeze_vpn/features/proxy/active/ip_widget.dart';
import 'package:maximeze_vpn/hiddifycore/generated/v2/hcore/hcore.pb.dart';
import 'package:maximeze_vpn/utils/custom_loggers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ActiveProxyFooter extends ConsumerWidget with InfraLogger {
  const ActiveProxyFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectionState = ref.watch(
      connectionNotifierProvider.select((value) => value.valueOrNull ?? const Disconnected()),
    );

    final activeProxy = ref.watch(activeProxyNotifierProvider.select((value) => value.valueOrNull));
    final t = ref.watch(translationsProvider).requireValue;

    if (connectionState != const Connected() || activeProxy == null) {
      return const SizedBox.shrink();
    }

    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    Future<void> handleUrlTest() async {
      try {
        if (!context.mounted) return;
        await ref.read(activeProxyNotifierProvider.notifier).urlTest("");
      } catch (e) {
        loggy.error("Error during URL test: $e");
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface.withValues(alpha: isDark ? 0.6 : 0.8),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: theme.colorScheme.outline.withValues(alpha: 0.2),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.secondary.withValues(alpha: 0.18),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                context.goNamed('proxies');
              },
              child: Row(
                children: [
                  InkWell(
                    onTap: () async {
                      await handleUrlTest();
                      await ref.read(dialogNotifierProvider.notifier).showProxyInfo(outboundInfo: activeProxy);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: IPCountryFlag(
                        countryCode: activeProxy.ipinfo.countryCode,
                        organization: activeProxy.ipinfo.org,
                        size: 48,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Semantics(
                          label: t.pages.proxies.activeProxy,
                          child: Text(
                            activeProxy.tagDisplay,
                            style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            if (activeProxy.ipinfo.ip.isNotEmpty)
                              IPText(ip: activeProxy.ipinfo.ip, onLongPress: handleUrlTest, constrained: true)
                            else
                              UnknownIPText(text: t.pages.proxies.unknownIp, onTap: handleUrlTest),
                            const Spacer(),
                            Text(
                              activeProxy.type,
                              style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

String getRealOutboundTag(OutboundInfo group) {
  var tag = group.tagDisplay;
  if (group.groupSelectedTagDisplay != "" && group.groupSelectedTagDisplay != tag) {
    tag = "$tag → ${group.groupSelectedTagDisplay}";
  }
  return tag;
}

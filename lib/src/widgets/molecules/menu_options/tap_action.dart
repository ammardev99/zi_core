import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zi_core/src/zi_core_io.dart';

enum ZiTapActionType {
  navigate,
  openPage,
  openUrl,
  dialog,
  share,
  copy,
  bottomSheet,
  custom,
}

class ZiTapAction {
  final ZiTapActionType type;

  final String? route;
  final Widget? page;
  final String? url;

  /// Share / Copy payload
  final String? text;
  final String? link;

  final WidgetBuilder? dialogBuilder;
  final WidgetBuilder? bottomSheetBuilder;
  final VoidCallback? onTap;

  const ZiTapAction({
    required this.type,
    this.route,
    this.page,
    this.url,
    this.text,
    this.link,
    this.dialogBuilder,
    this.bottomSheetBuilder,
    this.onTap,
  });

  Future<void> execute(BuildContext context) async {
    switch (type) {
      case ZiTapActionType.navigate:
        if (route != null) {
          Navigator.pushNamed(context, route!);
        }
        break;

      case ZiTapActionType.openPage:
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page!),
          );
        }
        break;

      case ZiTapActionType.openUrl:
        if (url != null) {
          final uri = Uri.parse(url!);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        }
        break;

      case ZiTapActionType.dialog:
        if (dialogBuilder != null) {
          showDialog(context: context, builder: dialogBuilder!);
        }
        break;

      case ZiTapActionType.bottomSheet:
        if (bottomSheetBuilder != null) {
          showModalBottomSheet(
            context: context,
            builder: bottomSheetBuilder!,
          );
        }
        break;

      case ZiTapActionType.copy:
        final String data = [text, link].where((e) => e != null).join('\n');

        if (data.isNotEmpty) {
          await Clipboard.setData(ClipboardData(text: data));
          ZiToast(message: 'Copied to clipboard', type: ZiToastType.info);
        }
        break;

      case ZiTapActionType.share:
        final String data = [text, link].where((e) => e != null).join('\n');

        if (data.isNotEmpty) {
          // Placeholder – can be wired to share_plus later
          _showToast(context, 'Share action triggered');
        }
        break;

      case ZiTapActionType.custom:
        onTap?.call();
        break;
    }
  }

  void _showToast(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }
}

import 'package:flutter/material.dart';

enum ZiTapActionType { navigate, openPage, openUrl, dialog, custom }

class ZiTapAction {
  final ZiTapActionType type;

  final String? route;
  final Widget? page;
  final String? url;
  final WidgetBuilder? dialogBuilder;
  final VoidCallback? onTap;

  const ZiTapAction({
    required this.type,
    this.route,
    this.page,
    this.url,
    this.dialogBuilder,
    this.onTap,
  });

  void execute(BuildContext context) {
    switch (type) {
      case ZiTapActionType.navigate:
        if (route != null) {
          Navigator.pushNamed(context, route!);
        }
        break;

      case ZiTapActionType.openPage:
        if (page != null) {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page!));
        }
        break;

      case ZiTapActionType.openUrl:
        if (url != null) {
          debugPrint('Opening URL: $url');
        }
        break;

      case ZiTapActionType.dialog:
        if (dialogBuilder != null) {
          showDialog(context: context, builder: dialogBuilder!);
        }
        break;

      case ZiTapActionType.custom:
        onTap?.call();
        break;
    }
  }
}

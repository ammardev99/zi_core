import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

class ZiMenuTile1 extends StatelessWidget {
  final String label;
  final ZiTapAction action;

  // Optional UI controls
  final IconData icon;
  final bool showPrefix;
  final bool showSufix;
  final bool seprated;
  final bool showBorderbottom;
  final double borderRadius;
  final double tileH;
  final double marginH;
  final double marginV;
  final Color iconPrefixColor;
  final Color labelColor;
  final Color bgColor;
  final Color splashColor;
  final Color borderColor;

  // New flexible widgets
  final Widget? leadingWidget;
  final Widget? trailingWidget;

  ZiMenuTile1({
    super.key,
    required this.label,
    required this.action,
    this.icon = Icons.menu,
    this.showPrefix = true,
    this.showSufix = true,
    this.seprated = false,
    bool? showBorderbottom,
    this.tileH = 14,
    double? borderRadius,
    double? marginH,
    double? marginV,
    this.iconPrefixColor = ZiColors.heading,
    this.labelColor = ZiColors.heading,
    Color? bgColor,
    this.borderColor = ZiColors.border,
    this.splashColor = ZiColors.forground,
    this.leadingWidget,
    this.trailingWidget,
  })  : borderRadius = borderRadius ?? (seprated ? 8 : 0),
        showBorderbottom = showBorderbottom ?? (seprated ? false : true),
        marginH = marginH ?? (seprated ? 6 : 0),
        marginV = marginV ?? (seprated ? 4 : 0),
        bgColor = bgColor ?? (seprated ? ZiColors.info.withValues(alpha: 0.5) : ZiColors.transparent);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: marginH, vertical: marginV),
      child: Material(
        color: Colors.transparent, // important for splash
        borderRadius: BorderRadius.circular(borderRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          splashColor: splashColor,
          onTap: () => action.execute(context),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: tileH),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(borderRadius),
              border: showBorderbottom
                  ? Border(bottom: BorderSide(color: borderColor))
                  : null,
            ),
            child: Row(
              children: [
                if (leadingWidget != null)
                  leadingWidget!
                else if (showPrefix)
                  ...[
                    Icon(icon, size: 22, color: iconPrefixColor),
                    const SizedBox(width: 12),
                  ],
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(fontSize: 16, color: labelColor),
                  ),
                ),
                if (trailingWidget != null)
                  trailingWidget!
                else if (showSufix)
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: ZiColors.info,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

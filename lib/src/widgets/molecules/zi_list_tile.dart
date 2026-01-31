import 'package:flutter/material.dart';
import '../../theme/zi_theme_io.dart';

class ZiListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  const ZiListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: Text(title, style: ZiTextStyles.subHeading.copyWith(fontSize: 16)),
      subtitle: subtitle != null ? Text(subtitle!, style: ZiTextStyles.caption) : null,
      trailing: trailing ?? const Icon(Icons.chevron_right, color: ZiColors.grayLight),
      contentPadding: ZiSpacing.mediumPadding,
    );
  }
}
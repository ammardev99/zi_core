import 'package:flutter/material.dart';
import '../../theme/zi_theme_io.dart';

class ZiAppBarB extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool centerTitle;

  const ZiAppBarB({
    super.key,
    required this.title,
    this.actions,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ZiColors.primary,
      elevation: 0,
      centerTitle: centerTitle,
      title: Text(
        title,
        style: ZiTextStyles.subHeading.copyWith(
          color: ZiColors.white,
          fontSize: 20,
        ),
      ),
      actions: actions,
      iconTheme: const IconThemeData(color: ZiColors.white),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

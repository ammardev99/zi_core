import 'package:flutter/material.dart';

enum ZiLeadingType { none, back, menu, custom }

class ZiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final ZiLeadingType leadingType;
  final Widget? customLeading;
  final List<Widget>? actions;
  final Widget? bottom;
  final bool centerTitle;
  final bool transparent;

  const ZiAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.leadingType = ZiLeadingType.none,
    this.customLeading,
    this.actions,
    this.bottom,
    this.centerTitle = true,
    this.transparent = false,
  });

  Widget? _buildLeading(BuildContext context) {
    switch (leadingType) {
      case ZiLeadingType.back:
        return IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.maybePop(context),
        );
      case ZiLeadingType.menu:
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        );
      case ZiLeadingType.custom:
        return customLeading;
      case ZiLeadingType.none:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          transparent
              ? Colors.transparent
              : Theme.of(context).colorScheme.surface,
      elevation: transparent ? 0 : 1,
      centerTitle: centerTitle,
      title:
          titleWidget ??
          (title != null
              ? Text(title!, style: Theme.of(context).textTheme.titleLarge)
              : null),
      leading: _buildLeading(context),
      actions: actions,
      bottom:
          bottom != null
              ? PreferredSize(
                preferredSize: const Size.fromHeight(48),
                child: bottom!,
              )
              : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

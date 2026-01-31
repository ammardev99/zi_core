import 'package:flutter/material.dart';
import '../../theme/zi_theme_io.dart';

class ZiScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool safeArea;

  const ZiScaffold({
    super.key,
    this.title,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.safeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? ZiColors.background,
      appBar: appBar as PreferredSizeWidget?, // Or use your ZiAppBar
      body: safeArea ? SafeArea(child: body) : body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
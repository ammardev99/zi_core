import 'package:flutter/material.dart';
import '../../../zi_core.dart';

// later add
// bottom sheet
// drawer
class ZiScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool safeArea;
  final bool isExtendBody;

  /// Controls default page padding
  final bool showPagePadding;

  /// Custom page padding (overrides default)
  final EdgeInsets? pagePadding;

  const ZiScaffold({
    super.key,
    this.title,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.safeArea = true,
    this.isExtendBody = false,
    this.showPagePadding = true,
    this.pagePadding,
  });

  @override
  Widget build(BuildContext context) {
    final EdgeInsets safePadding = pagePadding ??
        (showPagePadding ? const EdgeInsets.all(15) : EdgeInsets.zero);

    Widget content = Padding(
      padding: safePadding,
      child: body,
    );

    // Keyboard-safe scroll handling
    content = SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: content,
    );

    if (safeArea) {
      content = SafeArea(child: content);
    }

    return Scaffold(
      extendBody: isExtendBody,
      backgroundColor: backgroundColor ?? ZiColors.background,
      appBar: appBar as PreferredSizeWidget?,
      body: content,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
// TODO: R-Comment
// import 'package:flutter/material.dart';
// import '../../../zi_core.dart';

// class ZiScaffold extends StatelessWidget {
//   final String? title;
//   final Widget body;
//   final Widget? appBar;
//   final Widget? floatingActionButton;
//   final Widget? bottomNavigationBar;
//   final Color? backgroundColor;
//   final bool safeArea;
//   final bool? showPagePadding;
//   final EdgeInsets? pagePadding;

//   const ZiScaffold({
//     super.key,
//     this.title,
//     required this.body,
//     this.appBar,
//     this.floatingActionButton,
//     this.bottomNavigationBar,
//     this.backgroundColor,
//     this.safeArea = true,
//     this.showPagePadding = true,
//     this.pagePadding,

//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor ?? ZiColors.background,
//       appBar: appBar as PreferredSizeWidget?, // Or use your ZiAppBar
//       body: safeArea ? SafeArea(child: body) : body,
//       floatingActionButton: floatingActionButton,
//       bottomNavigationBar: bottomNavigationBar,
//     );
//   }
// }

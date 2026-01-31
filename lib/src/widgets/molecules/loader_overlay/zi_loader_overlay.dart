import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';


/// --------------------------------------------
/// Overlay Types (State meaning)
/// --------------------------------------------
enum ZiOverlayType { loading, success, error }

/// --------------------------------------------
/// Overlay Visuals (Appearance)
/// --------------------------------------------
enum ZiOverlayVisual { circular, circularWithText, circularWithAppIcon }

/// --------------------------------------------
/// ZiOverlayLoader
/// --------------------------------------------
class ZiOverlayLoader {
  static bool _isShowing = false;

  static void show(
    BuildContext context, {
    ZiOverlayType type = ZiOverlayType.loading,
    ZiOverlayVisual visual = ZiOverlayVisual.circular,
    String? message,
    Widget? appIcon,
  }) {
    if (_isShowing) return;
    _isShowing = true;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (_) => PopScope(
            canPop: false,
            child: Center(
              child: _OverlayContainer(
                child: _OverlayContent(
                  type: type,
                  visual: visual,
                  message: message,
                  appIcon: appIcon,
                ),
              ),
            ),
          ),
    );
  }

  static void hide(BuildContext context) {
    if (!_isShowing) return;
    _isShowing = false;

    Navigator.of(context, rootNavigator: true).pop();
  }
}

/// --------------------------------------------
/// Overlay Container
/// --------------------------------------------
class _OverlayContainer extends StatelessWidget {
  final Widget child;

  const _OverlayContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: ZiColors.white,
        borderRadius: BorderRadius.circular(ZiRadius.md),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 16,
          ),
        ],
      ),
      child: child,
    );
  }
}

/// --------------------------------------------
/// Overlay Content
/// --------------------------------------------
class _OverlayContent extends StatelessWidget {
  final ZiOverlayType type;
  final ZiOverlayVisual visual;
  final String? message;
  final Widget? appIcon;

  const _OverlayContent({
    required this.type,
    required this.visual,
    this.message,
    this.appIcon,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ZiOverlayType.success:
        return const Icon(Icons.check_circle, color: Colors.green, size: 56);

      case ZiOverlayType.error:
        return const Icon(Icons.error, color: Colors.red, size: 56);

      case ZiOverlayType.loading:
        return _buildLoading();
    }
  }

  Widget _buildLoading() {
    final loader = ZiLoading(type: ZiLoadingType.circularTheme);

    switch (visual) {
      case ZiOverlayVisual.circular:
        return loader;

      case ZiOverlayVisual.circularWithText:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            loader,
            if (message != null) ...[
              const SizedBox(height: 12),
              Text(
                message!,
                style: ZiTextStyles.labelLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ],
        );

      case ZiOverlayVisual.circularWithAppIcon:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (appIcon != null) ...[appIcon!, const SizedBox(height: 12)],
            loader,
            if (message != null) ...[
              const SizedBox(height: 12),
              Text(
                message!,
                style: ZiTextStyles.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ],
        );
    }
  }
}

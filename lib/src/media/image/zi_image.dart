import 'dart:io';
import 'package:flutter/material.dart';
import 'zi_image_type.dart';
import 'zi_image_variant.dart';
import 'zi_image_style.dart';
import 'zi_images.dart';

class ZiImage extends StatelessWidget {
  final String? path;
  final ZiImageType type;
  final ZiImageVariant variant;
  final ZiImageRatio ratio;
  final BoxFit fit;
  final ZiImageStyle style;
  final VoidCallback? onTap;

  const ZiImage({
    super.key,
    required this.path,
    required this.type,
    this.variant = ZiImageVariant.rectangle,
    this.ratio = ZiImageRatio.auto,
    this.fit = BoxFit.cover,
    this.style = ZiImageStyle.none,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget image = _buildImage();

    if (variant == ZiImageVariant.circle) {
      image = ClipOval(child: image);
    } else if (style.radius != null) {
      image = ClipRRect(borderRadius: style.radius!, child: image);
    }

    if (style.border != null || style.backgroundColor != null) {
      image = Container(
        decoration: BoxDecoration(
          border: style.border,
          color: style.backgroundColor,
        ),
        child: image,
      );
    }

    if (onTap != null) {
      image = GestureDetector(onTap: onTap, child: image);
    }

    return _applyRatio(image);
  }

  Widget _buildImage() {
    if (path == null || path!.isEmpty) {
      return ZiImages.defaultImage;
    }

    switch (type) {
      case ZiImageType.asset:
        return Image.asset(
          path!,
          fit: fit,
          errorBuilder: (_, __, ___) => ZiImages.defaultImage,
        );

      case ZiImageType.network:
        return Image.network(
          path!,
          fit: fit,
          errorBuilder: (_, __, ___) => ZiImages.defaultImage,
        );

      case ZiImageType.file:
        return Image.file(
          File(path!),
          fit: fit,
          errorBuilder: (_, __, ___) => ZiImages.defaultImage,
        );
    }
  }

  Widget _applyRatio(Widget child) {
    switch (ratio) {
      case ZiImageRatio.r1x1:
        return AspectRatio(aspectRatio: 1, child: child);
      case ZiImageRatio.r3x4:
        return AspectRatio(aspectRatio: 3 / 4, child: child);
      case ZiImageRatio.r16x9:
        return AspectRatio(aspectRatio: 16 / 9, child: child);
      case ZiImageRatio.auto:
        return child;
    }
  }
}

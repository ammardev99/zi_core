import 'package:flutter/material.dart';
import '../../../zi_core_io.dart';

enum ZiLoadingType {
  circular,
  circularTheme,
  linear,
  linearTheme,
  circularPercent,
  circularPercentText,
  dots,
  dotsTheme,
  skeleton,
  skeletonGrid,
}

class ZiLoading extends StatelessWidget {
  final ZiLoadingType type;
  final ZiLoadingStyle ziLoadstyle;

  const ZiLoading({
    super.key,
    this.type = ZiLoadingType.circular,
    this.ziLoadstyle = const ZiLoadingStyle(),
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ZiLoadingType.circular:
        return ZiCircular(ziLoadstyle: ziLoadstyle.copyWith());
      case ZiLoadingType.circularTheme:
        return ZiCircular(
          ziLoadstyle: ziLoadstyle.copyWith(color: ZiColors.primary),
        );
      case ZiLoadingType.linear:
        return ZiLinear(ziLoadstyle: ziLoadstyle.copyWith());
      case ZiLoadingType.linearTheme:
        return ZiLinear(
          ziLoadstyle: ziLoadstyle.copyWith(color: ZiColors.primary),
        );

      case ZiLoadingType.circularPercent:
        return ZicircularPercent(
          ziLoadstyle: ziLoadstyle.copyWith(
            size: 20,
            strokeWidth: ziLoadstyle.strokeWidth * 1.5,
            color: ZiColors.primary,
          ),
        );
      case ZiLoadingType.circularPercentText:
        return ZicircularPercent(
          ziLoadstyle: ziLoadstyle.copyWith(
            size: 32,
            strokeWidth: ziLoadstyle.strokeWidth * 1.5,
            showPercentage: true,
            color: ZiColors.primary,
          ),
        );
      case ZiLoadingType.dots:
        return ZiDotsLoading(
          ziLoadStyle: ziLoadstyle.copyWith(color: ziLoadstyle.color),
        );
      case ZiLoadingType.dotsTheme:
        return ZiDotsLoading(
          ziLoadStyle: ziLoadstyle.copyWith(
            color: ziLoadstyle.color ?? ZiColors.primary,
          ),
        );
      case ZiLoadingType.skeleton:
        return ZiShimmerEngine(
          style: ziLoadstyle,
          child: _buildSkeletonList(ziLoadstyle.copyWith()),
        );
      case ZiLoadingType.skeletonGrid:
        return ZiShimmerEngine(
          style: ziLoadstyle,
          child: _buildSkeletonGrid(ziLoadstyle.copyWith()),
        );

      // case ZiLoadingType.skeletonCustom later will add here
    }
  }

  Widget _buildSkeletonList(ZiLoadingStyle style) {
    final count = style.value ?? 1;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: count.toInt(),
      separatorBuilder: (_, __) => SizedBox(height: style.strokeWidth * 2),
      itemBuilder: (_, __) {
        return ZiSkeleton(ziLoadStyle: style.copyWith());
      },
    );
  }

  //
  Widget _buildSkeletonGrid(ZiLoadingStyle style) {
    final count = style.count ?? 2;
    final columns = style.columns ?? 2;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: count,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: style.spacing,
        mainAxisSpacing: style.spacing,
        childAspectRatio: style.size,
      ),
      itemBuilder: (_, __) {
        return ZiSkeleton(ziLoadStyle: style.copyWith());
      },
    );
  }
}

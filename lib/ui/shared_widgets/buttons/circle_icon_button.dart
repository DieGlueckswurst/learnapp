import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/measurements.dart';

class CircleIconButton extends StatelessWidget {
  final VoidCallback onTapped;
  final double size;
  final String svgPath;
  final double svgSize;
  final double padding;
  final Color backgroundColor;
  final Color svgColor;
  final Alignment alignment;

  const CircleIconButton({
    required this.onTapped,
    required this.svgPath,
    this.size = touchTargetForButtons,
    this.svgSize = 23,
    this.padding = 0,
    this.backgroundColor = AppColors.blue,
    this.svgColor = AppColors.white,
    this.alignment = Alignment.center,
  });
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTapped,
        child: Container(
          height: size + padding,
          width: size + padding,
          color: AppColors.transparent,
          child: Center(
            child: Container(
              height: size,
              width: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
              ),
              child: Align(
                alignment: alignment,
                child: SvgPicture.asset(
                  svgPath,
                  height: svgSize,
                  width: svgSize,
                  color: svgColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

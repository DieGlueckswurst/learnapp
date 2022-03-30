import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class HeroText extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final String? heroTag;

  const HeroText({
    Key? key,
    required this.title,
    required this.textStyle,
    this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeroMode(
      enabled: heroTag != null,
      child: Hero(
        tag: heroTag ?? '',
        transitionOnUserGestures: true,
        child: Material(
          color: AppColors.transparent,
          child: Row(
            children: [
              Flexible(
                child: Text(
                  title,
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

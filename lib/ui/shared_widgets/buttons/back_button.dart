import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/hero_tags.dart';
import 'circle_icon_button.dart';

class CustomBackButton extends StatelessWidget {
  final bool isHeroEnabled;

  const CustomBackButton({
    Key? key,
    this.isHeroEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeroMode(
      enabled: isHeroEnabled,
      child: Hero(
        transitionOnUserGestures: true,
        tag: HeroTags.backButton,
        child: Row(
          children: [
            CircleIconButton(
              onTapped: () {
                Navigator.pop(context);
              },
              svgPath: 'assets/icons/chevron_left.svg',
              svgColor: AppColors.blue,
              backgroundColor: AppColors.transparent,
              svgSize: 22,
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:boilerplate/constants/app_colors.dart';
import 'package:boilerplate/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../constants/box_decoration.dart';

class AppBarButton extends StatefulWidget {
  final Function(int) onTap;
  final int index;
  final String title;
  final int selectedIndex;

  const AppBarButton({
    Key? key,
    required this.onTap,
    required this.index,
    required this.title,
    required this.selectedIndex,
  }) : super(key: key);
  @override
  _AppBarButtonState createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(
          widget.index,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.blue,
            width: defaultBorderWith,
          ),
          color: widget.selectedIndex == widget.index
              ? AppColors.white
              : AppColors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: Center(
            child: Text(
              widget.title,
              style: AppTextStyles.montserratH6Regular.copyWith(
                color: widget.selectedIndex == widget.index
                    ? AppColors.blue
                    : AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

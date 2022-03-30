import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/box_decoration.dart';
import '../constants/measurements.dart';
import '../constants/text_styles.dart';
import 'layout_service.dart';

class AlertService {
  static showSnackBar({
    required String title,
    required String description,
    required bool isSuccess,
  }) {
    Get.snackbar(
      '',
      '',
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      titleText: Text(
        title,
        style: AppTextStyles.montserratH6SemiBold.copyWith(
          color: AppColors.black,
        ),
      ),
      messageText: Text(
        description,
        style: AppTextStyles.montserratH7Regular.copyWith(
          color: AppColors.black,
        ),
      ),
      icon: SvgPicture.asset(
        isSuccess ? 'assets/icons/correct.svg' : 'assets/icons/multiply.svg',
        height: 15,
        color: isSuccess ? AppColors.blue : AppColors.blue,
      ),
      padding: EdgeInsets.all(
        20,
      ),
      backgroundColor: AppColors.white,
      borderColor: AppColors.black,
      borderWidth: defaultBorderWith,
      isDismissible: true,
      maxWidth: 500,
      duration: Duration(
        seconds: 4,
      ),
    );
  }

  static showAlert(
    BuildContext context1, {
    required VoidCallback onConfirm,
    required VoidCallback onCancel,
  }) async {
    await showDialog(
      context: context1,
      builder: (BuildContext context2) {
        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          backgroundColor: AppColors.transparent,
          content: SingleChildScrollView(
            child: Builder(builder: (context3) {
              return Container(
                decoration: defaultBoxDecoration,
                padding: EdgeInsets.all(
                  sidePadding,
                ),
                width: LayoutService.isDesktop(context3)
                    ? 400
                    : MediaQuery.of(context3).size.width - 2 * sidePadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Das ist ein Alert',
                      style: AppTextStyles.montserratH3Bold.copyWith(
                        color: AppColors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}

import 'package:boilerplate/shared_utils/color_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'constants/app_colors.dart';
import 'constants/text_styles.dart';
import 'data/provider/data_provider.dart';
import 'data/routing/app_router.dart';
import 'data/routing/views.dart';
import 'locale/app_translation.dart';
import 'locale/fallback_locale.dart';

class App extends StatelessWidget {
  final Locale locale;

  const App({
    Key? key,
    required this.locale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DataProvider(),
        ),
      ],
      child: GetMaterialApp(
        title: 'Flutter Boilerplate',
        navigatorKey: Get.key,
        translationsKeys: AppTranslation.translationsKeys,
        locale: locale,
        fallbackLocale: fallbackLocale,
        theme: ThemeData(
          fontFamily: AppTextStyles.montserrat,
          primarySwatch: ColorService.createMaterialColor(
            AppColors.blue,
          ),
          backgroundColor: AppColors.white,
          scaffoldBackgroundColor: AppColors.white,
        ),
        initialRoute: Views.home,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}

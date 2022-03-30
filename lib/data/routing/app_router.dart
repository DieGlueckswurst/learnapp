import 'package:flutter/material.dart';

import '../../constants/transition_duration.dart';
import '../../ui/views/home/home_view.dart';
import '../../ui/views/language_settings/language_settings_view.dart';
import 'views.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Views.home:
        return CustomPageRoute(
          builder: (context) => HomeView(),
        );

      case Views.languageSettings:
        int? transition = settings.arguments as int?;
        if (transition == 0) {
          return _buildHeroTransition(
            LanguageSettingsView(),
          );
        } else if (transition == 1) {
          return CustomPageRoute(
            builder: (context) => LanguageSettingsView(),
          );
        } else {
          return MaterialPageRoute(
            builder: (_) => LanguageSettingsView(),
          );
        }

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }

  static PageRouteBuilder _buildHeroTransition(Widget screenToTransition) {
    return PageRouteBuilder(
      transitionDuration: const Duration(
        milliseconds: transitionDurationInMS,
      ),
      reverseTransitionDuration: const Duration(
        milliseconds: transitionDurationInMS,
      ),
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return screenToTransition;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(
        milliseconds: transitionDurationInMS,
      );
}

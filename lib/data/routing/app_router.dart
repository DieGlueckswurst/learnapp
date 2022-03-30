import 'package:flutter/material.dart';

import '../../constants/transition_duration.dart';
import '../../ui/views/home/home_view.dart';
import 'views.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Views.home:
        return CustomPageRoute(
          builder: (context) => HomeView(),
        );

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
}

class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(
        milliseconds: transitionDurationInMS,
      );
}

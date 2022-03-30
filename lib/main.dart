import 'package:boilerplate/locale/locale_service.dart';
import 'package:boilerplate/shared_utils/configuration_service.dart';
import 'package:flutter/material.dart';

import 'app.dart';

Future main() async {
  await ConfigurationService.initApp();

  runApp(
    App(
      locale: await LocaleService.getLocale(),
    ),
  );
}

import 'package:boilerplate/data/local_storage/local_storage_keys.dart';
import 'package:boilerplate/data/local_storage/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fallback_locale.dart';

class LocaleService {
  static changeLanguage({
    required String languageCode,
  }) async {
    Locale locale = Locale(languageCode);
    await Get.updateLocale(locale);

    await LocalStorageService.setString(
      key: LocalStorageKeys.languageCode,
      value: languageCode,
    );
  }

  static Future<Locale> getLocale() async {
    String? languageCode = await LocalStorageService.getData(
      key: LocalStorageKeys.languageCode,
    );
    Locale? locale;
    if (languageCode != null) {
      locale = Locale(
        languageCode,
      );
    }

    return locale ?? Get.deviceLocale ?? fallbackLocale;
  }
}

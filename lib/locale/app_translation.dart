import 'package:boilerplate/locale/supported_language_codes.dart';
import 'package:boilerplate/locale/translations/base_translations/de.dart';
import 'package:boilerplate/locale/translations/en.dart';

class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    SupportedLanguageCodes.de: de,
    SupportedLanguageCodes.en: en,
  };
}

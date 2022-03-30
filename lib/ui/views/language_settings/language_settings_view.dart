import 'package:boilerplate/locale/locale_service.dart';
import 'package:boilerplate/locale/supported_language_codes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../constants/hero_tags.dart';
import '../../../constants/measurements.dart';
import '../../../constants/text_styles.dart';
import '../../shared_widgets/buttons/back_button.dart';
import '../../shared_widgets/buttons/rounded_corner_text_button.dart';
import '../../shared_widgets/hero_text.dart';

class LanguageSettingsView extends StatefulWidget {
  @override
  _LanguageSettingsViewState createState() => _LanguageSettingsViewState();
}

class _LanguageSettingsViewState extends State<LanguageSettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoScaffold(
        body: Builder(
          builder: (context) => CupertinoPageScaffold(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(
                  sidePadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBackButton(),
                    HeroText(
                      title: 'Sprache wählen'.tr,
                      textStyle: AppTextStyles.montserratH1Bold,
                      heroTag: HeroTags.header,
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    RoundedCornersTextButton(
                      title: '🇩🇪 Deutsch',
                      onTap: () async {
                        await LocaleService.changeLanguage(
                          languageCode: SupportedLanguageCodes.de,
                        );
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    RoundedCornersTextButton(
                      title: '🇺🇸 Englisch',
                      onTap: () async {
                        await LocaleService.changeLanguage(
                          languageCode: SupportedLanguageCodes.en,
                        );
                        setState(() {});
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../constants/text_styles.dart';
import '../../../../shared_widgets/page_view_scaffold.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      children: [
        Text(
          'Herzlich Willkommen in deiner Lern-App!\n\n',
        ),
        SizedBox(
          height: 300,
          child: Image.asset(
            'assets/images/homescreensmall.png',
          ),
        ),
        Text(
          '\nDu befindest dich gerade im Themenbereich Zehnerübergang des Faches Mathematik.\n',
          style: AppTextStyles.montserratH6Regular,
        ),
        Text(
          'Unter der Rubrik Info-Text findest Informationen zum Rechnen von Plus- und Minusaufgaben mit Zehnerübergang. Klicke dazu auf das Feld Info-Text und lies dir durch, wie man beim Zehnerübergang rechnet. \n',
          style: AppTextStyles.montserratH6Regular,
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                style: AppTextStyles.montserratH6Regular,
                text:
                    'Bearbeite anschließend die Aufgaben. Die Farbe des Feldes verrät dir, ob du eine Aufgabe richtig gerechnet hast. Bei ',
              ),
              TextSpan(
                text: 'grün',
                style: AppTextStyles.montserratH6Regular
                    .copyWith(color: Colors.green),
              ),
              TextSpan(
                style: AppTextStyles.montserratH6Regular,
                text: ' hast du das richtige Ergebnis! Bei ',
              ),
              TextSpan(
                text: 'rot',
                style: AppTextStyles.montserratH6Regular
                    .copyWith(color: Colors.red),
              ),
              TextSpan(
                style: AppTextStyles.montserratH6Regular,
                text: ' solltest du dein Ergebnis noch einmal überprüfen! \n',
              ),
            ],
          ),
        ),
        Text(
          'Bist du mit den Aufgaben fertig, so kannst du unter Ergebnis einsehen, wie viele Aufgaben du richtig gerechnet hast.  \n\n\n',
          style: AppTextStyles.montserratH6Regular,
        ),
      ],
    );
  }
}

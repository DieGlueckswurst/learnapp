import 'package:flutter/material.dart';

import '../../../../shared_widgets/page_view_scaffold.dart';

class SubtractionPage extends StatefulWidget {
  @override
  _SubtractionPageState createState() => _SubtractionPageState();
}

class _SubtractionPageState extends State<SubtractionPage> {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      children: [
        Text(
          'INFO-TEXT: \n\nZweistellige Zahlen subtrahieren: \nMöchtest du eine zweistellige Zahl von einer anderen Zahl abziehen, musst du zuerst die Zehner der zweiten Zahl von der ersten abziehen. \nDann ziehst du die Einer der zweiten Zahl vom Ergebnis der ersten Rechnung ab und erhältst das Gesamtergebnis.\nBeispiel: \n52 - 28 = ? gesamte Aufgabe \nSchritt 1: Abzug der Zehner: 53 - 20 = 33 \nSchritt 2: Abzug der Einer vom Ergebnis: 33 - 8 = 25 —> Gesamtergebnis \n\nEine ausführliche Erklärung findest du auch unter: https://youtu.be/4UcWkLjSSDg',
        ),
      ],
    );
  }
}

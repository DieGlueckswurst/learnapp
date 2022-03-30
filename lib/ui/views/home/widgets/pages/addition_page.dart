import 'package:flutter/material.dart';

import '../../../../shared_widgets/page_view_scaffold.dart';

class AdditionPage extends StatefulWidget {
  @override
  _AdditionPageState createState() => _AdditionPageState();
}

class _AdditionPageState extends State<AdditionPage> {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      children: [
        Text(
          ' INFO-TEXT: \n\nZweistellige Zahlen addieren: \nMöchtest du eine zweistellige Zahl zu einer anderen zweistelligen Zahl addieren, musst du zunächst die Zehner der beiden Zahlen addieren. \nAnschließend addierst du die Einer der beiden Zahlen. Die Ergebnisse der beiden Rechnungen addierst du zusammen und erhältst das Gesamtergebnis. \nBeispiel: \n37 + 25 = ? gesamte Aufgabe \nSchritt 1: Addition der Zehner: 30 + 20 = 50 \nSchritt 2: Addition der Einer: 7 + 5 = 12 \nSchritt 3: Addition der Ergebnisse: 50 + 12 = 62 —> Gesamtergebnis \n\nEine ausführliche Erklärung findest du auch unter: https://youtu.be/5kdkpTDEkks ',
        ),
      ],
    );
  }
}

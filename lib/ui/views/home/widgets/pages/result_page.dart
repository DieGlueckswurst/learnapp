import 'package:boilerplate/shared_utils/data_service.dart';
import 'package:flutter/material.dart';

import '../../../../shared_widgets/page_view_scaffold.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    int correctAnswersCounter = DataServcice.getCorrectAnswersCounter(
      context: context,
    );
    return PageScaffold(
      children: [
        Text(
          'Du hast $correctAnswersCounter richtige Antworten.',
        ),
      ],
    );
  }
}

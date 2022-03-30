import 'package:flutter/material.dart';

import '../../../../../shared_utils/data_service.dart';
import '../../../../shared_widgets/buttons/answer_button.dart';
import '../../../../shared_widgets/page_view_scaffold.dart';

class ExerciseFivePage extends StatefulWidget {
  final int questionIndex;

  const ExerciseFivePage({
    Key? key,
    required this.questionIndex,
  }) : super(key: key);

  @override
  _ExerciseFivePageState createState() => _ExerciseFivePageState();
}

class _ExerciseFivePageState extends State<ExerciseFivePage> {
  bool correctAnswerWasTapped = false;

  @override
  Widget build(BuildContext context) {
    String currentAnswer = DataServcice.getCurrentAnswerForQuestion(
      context: context,
      questionIndex: widget.questionIndex,
    );
    String correctAnswer = DataServcice.getCorrectAnswerForQuestion(
      context: context,
      questionIndex: widget.questionIndex,
    );
    return PageScaffold(
      children: [
        Text('Addiere & Subtrahiere \n'),
        SizedBox(
          height: 200,
          child: Image.asset(
            'assets/images/aufgabe5.jpg',
          ),
        ),
        Text(
          '\nMartin kauft für Lena 30 Tulpen und 47 Rosen. Leider verwelken davon 18 Blumen innerhalb der ersten Woche. Wie viele Blumen hat Lena nach einer Woche noch? \n',
        ),
        AnswerButton(
          answer: 'a)       49',
          correctAnswer: correctAnswer,
          currentAnswer: currentAnswer,
          onAnswerTapped: (answer) {
            setState(
              () {
                currentAnswer = answer;
              },
            );
            DataServcice.setAnswer(
              context: context,
              answer: answer,
              correctAnswer: correctAnswer,
            );
          },
        ),
        AnswerButton(
          answer: 'b)       58',
          correctAnswer: correctAnswer,
          currentAnswer: currentAnswer,
          onAnswerTapped: (answer) {
            setState(
              () {
                currentAnswer = answer;
              },
            );
            DataServcice.setAnswer(
              context: context,
              answer: answer,
              correctAnswer: correctAnswer,
            );
          },
        ),
        AnswerButton(
          answer: 'c)       59',
          correctAnswer: correctAnswer,
          currentAnswer: currentAnswer,
          onAnswerTapped: (answer) {
            setState(
              () {
                currentAnswer = answer;
              },
            );
            DataServcice.setAnswer(
              context: context,
              answer: answer,
              correctAnswer: correctAnswer,
            );
          },
        ),
      ],
    );
  }
}

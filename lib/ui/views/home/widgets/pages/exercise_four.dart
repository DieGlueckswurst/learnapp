import 'package:flutter/material.dart';

import '../../../../../shared_utils/data_service.dart';
import '../../../../shared_widgets/buttons/answer_button.dart';
import '../../../../shared_widgets/page_view_scaffold.dart';

class ExerciseFourPage extends StatefulWidget {
  final int questionIndex;

  const ExerciseFourPage({
    Key? key,
    required this.questionIndex,
  }) : super(key: key);

  @override
  _ExerciseFourPageState createState() => _ExerciseFourPageState();
}

class _ExerciseFourPageState extends State<ExerciseFourPage> {
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
        Text('Löse die Textaufgabe \n'),
        SizedBox(
          height: 200,
          child: Image.asset(
            'assets/images/sackhuepfen.jpg',
          ),
        ),
        Text(
          '\nZum Sackhüpfen haben sich 36 Kinder angemeldet. 19 Kinder stehen schon an. Wie viele Kinder fehlen noch?\n',
        ),
        AnswerButton(
          answer: 'a)       17',
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
          answer: 'b)       18',
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
          answer: 'c)       19',
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

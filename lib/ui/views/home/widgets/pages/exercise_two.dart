import 'package:flutter/material.dart';

import '../../../../../shared_utils/data_service.dart';
import '../../../../shared_widgets/buttons/answer_button.dart';
import '../../../../shared_widgets/page_view_scaffold.dart';

class ExerciseTwoPage extends StatefulWidget {
  final int questionIndex;

  const ExerciseTwoPage({
    Key? key,
    required this.questionIndex,
  }) : super(key: key);

  @override
  _ExerciseTwoPageState createState() => _ExerciseTwoPageState();
}

class _ExerciseTwoPageState extends State<ExerciseTwoPage> {
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
        Text(
          'Subtrahiere: 92 - 47 = \n',
        ),
        AnswerButton(
          answer: 'a)       35',
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
          answer: 'b)       55',
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
          answer: 'c)       45',
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

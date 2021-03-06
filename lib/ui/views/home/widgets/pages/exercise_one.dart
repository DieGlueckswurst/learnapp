import 'package:boilerplate/shared_utils/data_service.dart';
import 'package:boilerplate/ui/shared_widgets/page_view_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../../shared_widgets/buttons/answer_button.dart';

class ExerciseOnePage extends StatefulWidget {
  final int questionIndex;

  const ExerciseOnePage({
    Key? key,
    required this.questionIndex,
  }) : super(key: key);

  @override
  _ExerciseOnePageState createState() => _ExerciseOnePageState();
}

class _ExerciseOnePageState extends State<ExerciseOnePage> {
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
          'Addiere: 46 + 24 = \n',
        ),
        AnswerButton(
          answer: 'a)       70',
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
          answer: 'b)       80',
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
          answer: 'c)       60',
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

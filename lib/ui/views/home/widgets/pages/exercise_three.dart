import 'package:flutter/material.dart';

import '../../../../../shared_utils/data_service.dart';
import '../../../../shared_widgets/buttons/answer_button.dart';
import '../../../../shared_widgets/page_view_scaffold.dart';

class ExerciseThreePage extends StatefulWidget {
  final int questionIndex;

  const ExerciseThreePage({
    Key? key,
    required this.questionIndex,
  }) : super(key: key);

  @override
  _ExerciseThreePageState createState() => _ExerciseThreePageState();
}

class _ExerciseThreePageState extends State<ExerciseThreePage> {
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
            'assets/images/thomas.jpg',
          ),
        ),
        Text(
          '\nThomas ist in der Klasse 2a. Er sammelt Murmeln. Thomas hat bereits 35 Murmeln. Am Samstag erhält er acht neue Murmeln. Wie viele Murmeln hat Thomas nun?\n',
        ),
        AnswerButton(
          answer: 'a)       42',
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
        SizedBox(
          height: 20,
        ),
        AnswerButton(
          answer: 'b)       43',
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
        SizedBox(
          height: 20,
        ),
        AnswerButton(
          answer: 'c)       44',
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

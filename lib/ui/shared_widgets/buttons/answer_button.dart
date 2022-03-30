import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class AnswerButton extends StatefulWidget {
  final String answer;
  final String correctAnswer;
  final Function(String) onAnswerTapped;
  final String currentAnswer;

  const AnswerButton({
    Key? key,
    required this.answer,
    required this.correctAnswer,
    required this.currentAnswer,
    required this.onAnswerTapped,
  }) : super(key: key);

  @override
  _AnswerButtonState createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  bool correctAnswerWasTapped = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: widget.currentAnswer != widget.answer
            ? AppColors.blue
            : widget.answer == widget.correctAnswer
                ? Colors.green
                : Colors.red,
      ),
      child: Text(widget.answer),
      onPressed: () {
        if (widget.answer == widget.correctAnswer && !correctAnswerWasTapped) {
          setState(() {
            correctAnswerWasTapped = true;
          });
        } else {
          setState(() {
            correctAnswerWasTapped = true;
          });
        }
        widget.onAnswerTapped(
          widget.answer,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  List<bool> correctAnswers = [
    false,
    false,
    false,
    false,
    false,
  ];

  Map<String, String> correctAnswersWithCurrentAnswers = {
    'a)       70': '',
    'c)       45': '',
    'b)       43': '',
    'a)       17': '',
    'c)       59': '',
  };

  int correctAnswersCounter = 0;

  setCurrentAnswer(
    String correctAnswer,
    String answer,
  ) {
    correctAnswersWithCurrentAnswers[correctAnswer] = answer;
    setCorrectAnswersCounter();
    notifyListeners();
  }

  setCorrectAnswersCounter() {
    correctAnswersCounter = 0;
    correctAnswersWithCurrentAnswers.forEach(
      (key, value) {
        if (key == value) {
          correctAnswersCounter++;
        }
      },
    );
  }
}

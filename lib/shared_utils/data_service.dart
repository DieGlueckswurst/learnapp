import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/provider/data_provider.dart';

class DataServcice {
  static Future<void> setAnswer({
    required BuildContext context,
    required String answer,
    required String correctAnswer,
  }) async {
    Provider.of<DataProvider>(
      context,
      listen: false,
    ).setCurrentAnswer(
      correctAnswer,
      answer,
    );
  }

  static int getCorrectAnswersCounter({
    required BuildContext context,
  }) {
    return Provider.of<DataProvider>(
      context,
    ).correctAnswersCounter;
  }

  static String getCurrentAnswerForQuestion({
    required BuildContext context,
    required int questionIndex,
  }) {
    return Provider.of<DataProvider>(
      context,
    ).correctAnswersWithCurrentAnswers.values.toList()[questionIndex];
  }

  static String getCorrectAnswerForQuestion({
    required BuildContext context,
    required int questionIndex,
  }) {
    return Provider.of<DataProvider>(
      context,
      listen: false,
    ).correctAnswersWithCurrentAnswers.keys.toList()[questionIndex];
  }
}

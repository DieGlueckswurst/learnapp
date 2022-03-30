import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// Link to edit animation:
// https://edit.lottiefiles.com/?src=https%3A%2F%2Fassets7.lottiefiles.com%2Fdatafiles%2FXKZfXUxDQSfhvyY%2Fdata.json

class LoadingDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Lottie.asset(
        'assets/lottie/loading_dots.json',
        animate: true,
        repeat: true,
      ),
    );
  }
}

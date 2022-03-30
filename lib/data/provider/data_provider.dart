import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  int amoundOfClicks = 0;

  incrementAmoundOfClicks() {
    amoundOfClicks++;
    notifyListeners();
  }
}

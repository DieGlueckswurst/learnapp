import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/provider/data_provider.dart';

class DataServcice {
  static Future<void> incrementAmoundOfClicks({
    required BuildContext context,
  }) async {
    await Future.delayed(
      Duration(
        milliseconds: 1000,
      ),
    );
    Provider.of<DataProvider>(
      context,
      listen: false,
    ).incrementAmoundOfClicks();
  }

  static int getAmoundOfClicks({
    required BuildContext context,
    required bool listen,
  }) {
    return Provider.of<DataProvider>(
      context,
      listen: listen,
    ).amoundOfClicks;
  }
}

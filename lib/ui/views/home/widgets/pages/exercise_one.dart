import 'package:boilerplate/constants/app_colors.dart';
import 'package:boilerplate/shared_utils/color_service.dart';
import 'package:boilerplate/ui/shared_widgets/page_view_scaffold.dart';
import 'package:flutter/material.dart';

class ExerciseOnePage extends StatefulWidget {
  @override
  _ExerciseOnePageState createState() => _ExerciseOnePageState();
}

class _ExerciseOnePageState extends State<ExerciseOnePage> {
  bool correctAnswerWasTapped = false;
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      children: [
        Text("Addiere: 46 + 24 = \n"),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.blue,
          ),
          child: Text(
            'a)       80',
          ),
          onPressed: () {},
        ),
        // Text("\n"),
        // RaisedButton(
        //   child: new Text('b)       70'),
        //   textColor: Colors.white,
        //   // 2
        //   //color: _hasBeenPressed ? Colors.green : Colors.blue,
        //   color: MyApp.pressed1B ? Colors.green : Colors.blue,
        //   // 3
        //   onPressed: () => {
        //     setState(() {
        //       //_hasBeenPressed = !_hasBeenPressed;
        //       MyApp.pressed1B = !MyApp.pressed1B;
        //       MyApp.counter++;
        //     })
        //   },
        // ),
        // Text("\n"),
        // RaisedButton(
        //   child: new Text('c)       60'),
        //   textColor: Colors.white,
        //   // 2
        //   //color: _hasBeenPressed ? Colors.red : Colors.blue,
        //   color: MyApp.pressed1C ? Colors.red : Colors.blue,
        //   // 3
        //   onPressed: () => {
        //     setState(() {
        //       //_hasBeenPressed = !_hasBeenPressed;
        //       MyApp.pressed1C = !MyApp.pressed1C;
        //     })
        //   },
        // ),
      ],
    );
  }
}

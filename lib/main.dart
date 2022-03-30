import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'custom_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static int counter = 0;
  static bool pressed1A = false;
  static bool pressed1B = false;
  static bool pressed1C = false;
  static bool pressed2A = false;
  static bool pressed2B = false;
  static bool pressed2C = false;
  static bool pressed3A = false;
  static bool pressed3B = false;
  static bool pressed3C = false;
  static bool pressed4A = false;
  static bool pressed4B = false;
  static bool pressed4C = false;
  static bool pressed5A = false;
  static bool pressed5B = false;
  static bool pressed5C = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LernApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Startseite'),
    );
  }
}

//Home Page Stateful
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//Home Page
class _MyHomePageState extends State<MyHomePage> {
  int tmp = MyApp.counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text("Herzlich Willkommen in deiner Lern-App!\n\n"),
                SizedBox(
                    height: 300,
                    child: Image.asset('assets/homescreensmall.png')),
                Text(
                    "\nDu befindest dich gerade im Themenbereich Zehnerübergang des Faches Mathematik.\n"),
                Text(
                    "Unter der Rubrik Info-Text findest Informationen zum Rechnen von Plus- und Minusaufgaben mit Zehnerübergang. Klicke dazu auf das Feld Info-Text und lies dir durch, wie man beim Zehnerübergang rechnet. \n"),
                Text(
                    "Bearbeite anschließend die Aufgaben. Die Farbe des Feldes verrät dir, ob du eine Aufgabe richtig gerechnet hast. Bei grün hast du das richtige Ergebnis! Bei rot solltest du dein Ergebnis noch einmal überprüfen! \n"),
                Text(
                    "Bist du mit den Aufgaben fertig, so kannst du unter Ergebnis einsehen, wie viele Aufgaben du richtig gerechnet hast.  \n\n\n"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//FirstInfo Stateful
class FirstInfo extends StatefulWidget {
  @override
  State<FirstInfo> createState() => _FirstInfoState();
}

//FirstInfo
class _FirstInfoState extends State<FirstInfo> {
  int tmp = MyApp.counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    " INFO-TEXT: \n\nZweistellige Zahlen addieren: \nMöchtest du eine zweistellige Zahl zu einer anderen zweistelligen Zahl addieren, musst du zunächst die Zehner der beiden Zahlen addieren. \nAnschließend addierst du die Einer der beiden Zahlen. Die Ergebnisse der beiden Rechnungen addierst du zusammen und erhältst das Gesamtergebnis. \nBeispiel: \n37 + 25 = ? gesamte Aufgabe \nSchritt 1: Addition der Zehner: 30 + 20 = 50 \nSchritt 2: Addition der Einer: 7 + 5 = 12 \nSchritt 3: Addition der Ergebnisse: 50 + 12 = 62 —> Gesamtergebnis \n\nEine ausführliche Erklärung findest du auch unter: https://youtu.be/5kdkpTDEkks ")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//SecondInfo Stateful
class SecondInfo extends StatefulWidget {
  @override
  State<SecondInfo> createState() => _SecondInfoState();
}

//SecondInfo
class _SecondInfoState extends State<SecondInfo> {
  int tmp = MyApp.counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    " INFO-TEXT: \n\nZweistellige Zahlen subtrahieren: \nMöchtest du eine zweistellige Zahl von einer anderen Zahl abziehen, musst du zuerst die Zehner der zweiten Zahl von der ersten abziehen. \nDann ziehst du die Einer der zweiten Zahl vom Ergebnis der ersten Rechnung ab und erhältst das Gesamtergebnis.\nBeispiel: \n52 - 28 = ? gesamte Aufgabe \nSchritt 1: Abzug der Zehner: 53 - 20 = 33 \nSchritt 2: Abzug der Einer vom Ergebnis: 33 - 8 = 25 —> Gesamtergebnis \n\nEine ausführliche Erklärung findest du auch unter: https://youtu.be/4UcWkLjSSDg ")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Aufgabe 1 Stateful
class FirstExercise extends StatefulWidget {
  @override
  State<FirstExercise> createState() => _FirstExerciseState();
}

//Aufgabe 1
class _FirstExerciseState extends State<FirstExercise> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                Text("Addiere: 46 + 24 = \n"),
                RaisedButton(
                  child: new Text('a)       80'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed1A ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed1A = !MyApp.pressed1A;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('b)       70'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.green : Colors.blue,
                  color: MyApp.pressed1B ? Colors.green : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed1B = !MyApp.pressed1B;
                      MyApp.counter++;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('c)       60'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed1C ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed1C = !MyApp.pressed1C;
                    })
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Aufgabe 2 Stateful
class SecondExercise extends StatefulWidget {
  @override
  State<SecondExercise> createState() => _SecondExerciseState();
}

//Aufgabe 2
class _SecondExerciseState extends State<SecondExercise> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                Text("Subtrahiere: 92 - 47 = \n"),
                RaisedButton(
                  child: new Text('a)       35'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed2A ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed2A = !MyApp.pressed2A;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('b)       55'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed2B ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed2B = !MyApp.pressed2B;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('c)       45'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.green : Colors.blue,
                  color: MyApp.pressed2C ? Colors.green : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed2C = !MyApp.pressed2C;
                      MyApp.counter++;
                    })
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Aufgabe 3 Stateful
class ThirdExercise extends StatefulWidget {
  @override
  State<ThirdExercise> createState() => _ThirdExerciseState();
}

//Aufgabe 3
class _ThirdExerciseState extends State<ThirdExercise> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            //alignment: Alignment(0.0, 0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                Text("Löse die Textaufgabe \n"),
                Image.asset('assets/thomas.jpg'),
                Text(
                    "\nThomas ist in der Klasse 2a. Er sammelt Murmeln. Thomas hat bereits 35 Murmeln. Am Samstag erhält er acht neue Murmeln. Wie viele Murmeln hat Thomas nun?\n"),
                RaisedButton(
                  child: new Text('a)       42'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed3A ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed3A = !MyApp.pressed3A;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('b)       43'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.green : Colors.blue,
                  color: MyApp.pressed3B ? Colors.green : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed3B = !MyApp.pressed3B;
                      MyApp.counter++;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('c)       44'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed3C ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed3C = !MyApp.pressed3C;
                    })
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Aufgabe 4 Stateful
class FourthExercise extends StatefulWidget {
  @override
  State<FourthExercise> createState() => _FourthExerciseState();
}

//Aufgabe 4
class _FourthExerciseState extends State<FourthExercise> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            //alignment: Alignment(0.0, 0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                Text("Löse die Textaufgabe \n"),
                Image.asset('assets/sackhuepfen.jpg'),
                Text(
                    "\nZum Sackhüpfen haben sich 36 Kinder angemeldet. 19 Kinder stehen schon an. Wie viele Kinder fehlen noch?\n"),
                RaisedButton(
                  child: new Text('a)       17'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.green : Colors.blue,
                  color: MyApp.pressed4A ? Colors.green : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed4A = !MyApp.pressed4A;
                      MyApp.counter++;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('b)       18'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed4B ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed4B = !MyApp.pressed4B;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('c)       19'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed4C ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed4C = !MyApp.pressed4C;
                    })
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Aufgabe 5 Stateful
class FifthExercise extends StatefulWidget {
  @override
  State<FifthExercise> createState() => _FifthExerciseState();
}

//Aufgabe 5
class _FifthExerciseState extends State<FifthExercise> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            //alignment: Alignment(0.0, 0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                Text("Addiere & Subtrahiere \n"),
                Image.asset('assets/aufgabe5.jpg'),
                Text(
                    "\nMartin kauft für Lena 30 Tulpen und 47 Rosen. Leider verwelken davon 18 Blumen innerhalb der ersten Woche. Wie viele Blumen hat Lena nach einer Woche noch? \n"),
                RaisedButton(
                  child: new Text('a)       49'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed5A ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed5A = !MyApp.pressed5A;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('b)       58'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.red : Colors.blue,
                  color: MyApp.pressed5B ? Colors.red : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed5B = !MyApp.pressed5B;
                    })
                  },
                ),
                Text("\n"),
                RaisedButton(
                  child: new Text('c)       59'),
                  textColor: Colors.white,
                  // 2
                  //color: _hasBeenPressed ? Colors.green : Colors.blue,
                  color: MyApp.pressed5C ? Colors.green : Colors.blue,
                  // 3
                  onPressed: () => {
                    setState(() {
                      //_hasBeenPressed = !_hasBeenPressed;
                      MyApp.pressed5C = !MyApp.pressed5C;
                      MyApp.counter++;
                    })
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Result Stateful
class Result extends StatefulWidget {
  @override
  State<Result> createState() => _ResultState();
}

//Result
class _ResultState extends State<Result> {
  bool _hasBeenPressed = false;
  int tmp = MyApp.counter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                //Image.asset('assets/bsp2.jpg'),
                Text(
                  'Du hast $tmp Fragen richtig beantwortet.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'main.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          height: 50,
          color: Colors.blue,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(title: 'Startseite')),
                  );
                },
                child: const Text('Startseite'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstInfo()),
                  );
                },
                child: const Text('Addition'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondInfo()),
                  );
                },
                child: const Text('Subtraktion'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstExercise()),
                  );
                },
                child: const Text('Aufgabe 1'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondExercise()),
                  );
                },
                child: const Text('Aufgabe 2'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdExercise()),
                  );
                },
                child: const Text('Aufgabe 3'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourthExercise()),
                  );
                },
                child: const Text('Aufgabe 4'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FifthExercise()),
                  );
                },
                child: const Text('Aufgabe 5'),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result()),
                  );
                },
                child: const Text('Ergebnis'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

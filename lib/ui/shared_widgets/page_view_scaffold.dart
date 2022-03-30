import 'package:flutter/material.dart';

import '../../constants/measurements.dart';

class PageScaffold extends StatefulWidget {
  final List<Widget> children;

  const PageScaffold({
    Key? key,
    required this.children,
  }) : super(key: key);
  @override
  _PageScaffoldState createState() => _PageScaffoldState();
}

class _PageScaffoldState extends State<PageScaffold> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 40,
          right: sidePadding,
          left: sidePadding,
        ),
        child: Column(
          children: widget.children,
        ),
      ),
    );
  }
}

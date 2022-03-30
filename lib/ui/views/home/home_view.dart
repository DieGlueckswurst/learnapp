import 'package:boilerplate/ui/views/home/widgets/custom_app_bar.dart';
import 'package:boilerplate/ui/views/home/widgets/pages/addition_page.dart';
import 'package:boilerplate/ui/views/home/widgets/pages/exercise_one.dart';
import 'package:boilerplate/ui/views/home/widgets/pages/start_page.dart';
import 'package:boilerplate/ui/views/home/widgets/pages/subtraction_page.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext rootContext) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              onPageTapped: (int pageIndex) {
                _toPage(pageIndex);
              },
              selectedIndex: _selectedIndex,
            ),
            Flexible(
              child: PageView(
                onPageChanged: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: _pageController,
                children: [
                  StartPage(),
                  AdditionPage(),
                  SubtractionPage(),
                  ExerciseOnePage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _toPage(int index) {
    _pageController.animateToPage(
      index,
      curve: Curves.easeInOut,
      duration: kThemeAnimationDuration,
    );
  }
}

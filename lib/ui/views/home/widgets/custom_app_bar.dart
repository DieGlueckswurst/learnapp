import 'package:boilerplate/constants/app_colors.dart';
import 'package:boilerplate/ui/shared_widgets/buttons/app_bar_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final Function(int) onPageTapped;
  final int selectedIndex;
  const CustomAppBar({
    Key? key,
    required this.onPageTapped,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.blue,
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          height: 50,
          color: AppColors.blue,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              AppBarButton(
                onTap: (index) {
                  widget.onPageTapped(0);
                },
                index: 0,
                title: 'Startseite',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: (index) {
                  widget.onPageTapped(1);
                },
                index: 1,
                title: 'Addition',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: widget.onPageTapped,
                index: 2,
                title: 'Subtraktion',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: widget.onPageTapped,
                index: 3,
                title: 'Aufgabe 1',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: widget.onPageTapped,
                index: 4,
                title: 'Aufgabe 2',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: widget.onPageTapped,
                index: 5,
                title: 'Aufgabe 3',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: widget.onPageTapped,
                index: 6,
                title: 'Aufgabe 4',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: widget.onPageTapped,
                index: 7,
                title: 'Aufgabe 5',
                selectedIndex: widget.selectedIndex,
              ),
              AppBarButton(
                onTap: widget.onPageTapped,
                index: 8,
                title: 'Ergebnis',
                selectedIndex: widget.selectedIndex,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

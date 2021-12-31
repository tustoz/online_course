import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course/constants.dart';
import 'package:online_course/screens/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  List page = [const HomeScreen(), const HomeScreen(), const HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: kBackgroundColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/document.svg'),
            label: 'document',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bookmark.svg'),
            label: 'bookmark',
          ),
        ],
      ),
    );
  }
}

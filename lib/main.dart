import 'package:flutter/material.dart';
import 'package:online_course/constants.dart';
import 'package:online_course/widgets/bottom_bar.dart';

void main() {
  runApp(const OnlineCourse());
}

class OnlineCourse extends StatelessWidget {
  const OnlineCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Course',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const BottomBar(),
    );
  }
}

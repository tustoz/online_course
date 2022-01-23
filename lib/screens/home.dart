import 'package:flutter/material.dart';
import 'package:online_course/widgets/image_container.dart';
import 'package:online_course/widgets/home/header.dart';
import 'package:online_course/widgets/home/search_bar.dart';
import 'package:online_course/widgets/home/trending_list.dart';
import 'package:online_course/widgets/home/course_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const ImageContainer(
              imageUrl: 'assets/images/background.png',
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                Header(),
                SearchBar(),
                TrendingList(),
                CourseList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

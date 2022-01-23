import 'package:flutter/material.dart';
import 'package:online_course/widgets/detail/custom_button.dart';
import 'package:online_course/widgets/detail/description.dart';
import 'package:online_course/widgets/detail/instructor_and_ratings.dart';
import 'package:online_course/widgets/detail/syllabus_list.dart';
import 'package:online_course/widgets/image_container.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String description;
  final String instructor;

  const DetailScreen({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.description,
    required this.instructor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.27;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ImageContainer(
              positioned: false,
              imageUrl: imageUrl,
              height: height,
            ),
            Description(
              title: title,
              description: description,
            ),
            InstructorAndRatings(
              instructor: instructor,
              rating: rating,
            ),
            const SyllabusList(),
            const CustomButton(title: 'Buy Course'),
          ],
        ),
      ),
    );
  }
}

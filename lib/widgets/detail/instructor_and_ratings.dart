import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class InstructorAndRatings extends StatelessWidget {
  final String instructor;
  final String rating;

  const InstructorAndRatings({
    Key? key,
    required this.instructor,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 30),
      child: FadeInUp(
        delay: const Duration(milliseconds: 900),
        child: Row(
          children: [
            Image.asset(
              'assets/images/instructor.png',
              scale: 4,
            ),
            const SizedBox(width: 9),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instructor',
                  style: regular14.copyWith(fontSize: 11),
                ),
                Text(
                  instructor,
                  style: medium15.copyWith(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(width: 23),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rating',
                  style: regular14.copyWith(fontSize: 11),
                ),
                Text(
                  rating,
                  style: regular14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

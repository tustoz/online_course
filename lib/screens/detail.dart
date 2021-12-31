import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:online_course/constants.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String instructor;
  final String rating;

  const DetailScreen({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.instructor,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3 - 60,
              width: MediaQuery.of(context).size.width,
              child: Hero(
                tag: imageUrl,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: FadeInUp(
                delay: const Duration(milliseconds: 500),
                child: Text(
                  title,
                  style: medium23.copyWith(fontSize: 22, color: kTextColor),
                ),
              ),
            ),
            const SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: FadeInUp(
                delay: const Duration(milliseconds: 700),
                child: Text(
                  description,
                  style: regular14.copyWith(color: kAccentColor),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
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
                        const SizedBox(height: 5),
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
                        const SizedBox(height: 5),
                        Text(
                          rating,
                          style: regular14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: FadeInUp(
                delay: const Duration(milliseconds: 1100),
                child: Text(
                  'Course Details',
                  style: regular14,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  FadeInUp(
                    delay: const Duration(milliseconds: 1100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/time.png', scale: 4),
                        const SizedBox(width: 13),
                        Text('110 Hours Sessions', style: regular14),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  FadeInUp(
                    delay: const Duration(milliseconds: 1100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/video.png', scale: 4),
                        const SizedBox(width: 13),
                        Text('Video recording available', style: regular14),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  FadeInUp(
                    delay: const Duration(milliseconds: 1100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/certificate.png', scale: 4),
                        const SizedBox(width: 13),
                        Text('Certificate on completion of course',
                            style: regular14),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: FadeInUp(
                  delay: const Duration(milliseconds: 1300),
                  child: SizedBox(
                    height: 62,
                    width: 197,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Buy Course'),
                      style: TextButton.styleFrom(
                        primary: kBackgroundColor,
                        textStyle: regular18,
                        backgroundColor: kShadeColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

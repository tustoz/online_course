import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:online_course/widgets/section_subtitle.dart';

import '../../constants.dart';

class SyllabusList extends StatelessWidget {
  const SyllabusList({Key? key}) : super(key: key);

  Widget item(
      final String icon, final String description, final Duration duration) {
    return FadeInUp(
      delay: duration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(icon, scale: 4),
          const SizedBox(width: 13),
          Text(description, style: regular14),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionSubtitle(
          title: 'Course Details',
          left: false,
          delay: Duration(
            milliseconds: 1100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              item(
                'assets/images/time.png',
                '110 Hours Sessions',
                const Duration(milliseconds: 1100),
              ),
              const SizedBox(height: 12),
              item(
                'assets/images/video.png',
                'Video recording available',
                const Duration(milliseconds: 1200),
              ),
              const SizedBox(height: 12),
              item(
                'assets/images/certificate.png',
                'Certificate on completion of course',
                const Duration(milliseconds: 1300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:online_course/widgets/section_title.dart';

import '../../constants.dart';

class Description extends StatelessWidget {
  final String title;
  final String description;

  const Description({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: title),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 20),
          child: FadeInUp(
            delay: const Duration(milliseconds: 700),
            child: Text(
              description,
              style: regular14.copyWith(color: kAccentColor),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_course/constants.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: medium15),
          Text('See all', style: medium15.copyWith(color: kAccentColor)),
        ],
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 13, 18, 13),
      child: FadeInUp(
        delay: const Duration(milliseconds: 500),
        child: Text(
          title,
          style: medium23.copyWith(fontSize: 22, color: kTextColor),
        ),
      ),
    );
  }
}

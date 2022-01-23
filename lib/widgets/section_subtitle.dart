import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SectionSubtitle extends StatefulWidget {
  final String title;
  final bool left;
  final Duration delay;

  const SectionSubtitle(
      {Key? key, required this.title, required this.left, required this.delay})
      : super(key: key);

  @override
  _SectionSubtitleState createState() => _SectionSubtitleState();
}

class _SectionSubtitleState extends State<SectionSubtitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 0, 23, 17),
      child: FadeInUp(
        delay: widget.delay,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title, style: medium15),
            widget.left == true
                ? Text(
                    'See all',
                    style: medium15.copyWith(color: kAccentColor),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

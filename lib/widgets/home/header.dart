import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 23, right: 23),
      child: FadeInUp(
        delay: const Duration(milliseconds: 700),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/profile.png', scale: 4),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: regular.copyWith(fontSize: 13),
                        ),
                        Text(
                          'Tustoz',
                          style: regular17,
                        ),
                      ],
                    )
                  ],
                ),
                SvgPicture.asset('assets/icons/bell.svg'),
              ],
            ),
            const SizedBox(height: 17),
            FadeInUp(
              delay: const Duration(milliseconds: 900),
              child: Text(
                'What do you want\nto learn Today',
                style: medium23,
              ),
            ),
            const SizedBox(height: 19),
          ],
        ),
      ),
    );
  }
}

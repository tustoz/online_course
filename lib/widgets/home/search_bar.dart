import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_course/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48, 0, 48, 64),
      child: FadeInUp(
        delay: const Duration(milliseconds: 1100),
        child: Row(
          children: [
            Container(
              height: 57,
              width: 226,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 37, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search courses',
                    hintStyle: medium15.copyWith(
                      fontWeight: FontWeight.w300,
                      color: Colors.black38,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              height: 57,
              width: 63,
              decoration: BoxDecoration(
                color: kShadeColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                child: SvgPicture.asset('assets/icons/search.svg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

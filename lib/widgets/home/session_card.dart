import 'package:flutter/material.dart';
import 'package:online_course/constants.dart';
import 'package:online_course/screens/detail.dart';

class SessionCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String sessions;
  final String attendes;
  final String instructor;
  final String rating;

  const SessionCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.sessions,
      required this.attendes,
      required this.instructor,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              imageUrl: imageUrl,
              title: title,
              description: description,
              instructor: instructor,
              rating: rating,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Hero(
            tag: title,
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 10,
              height: MediaQuery.of(context).size.height / 3 - 20,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(11),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 13,
            right: 4,
            child: Image.asset(imageUrl, scale: 4),
          ),
          Positioned(
            top: 13,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: medium23.copyWith(fontSize: 19),
                ),
                Text(
                  sessions,
                  style: medium15.copyWith(fontSize: 15),
                ),
              ],
            ),
          ),
          Positioned(
            left: 15,
            bottom: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          child: Image.asset(
                            'assets/images/attendes1.png',
                            scale: 4,
                          ),
                        ),
                        Positioned(
                          left: 10,
                          child: Image.asset(
                            'assets/images/attendes2.png',
                            scale: 4,
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Image.asset(
                            'assets/images/attendes3.png',
                            scale: 4,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  attendes,
                  style: regular17.copyWith(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

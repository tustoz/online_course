import 'package:flutter/material.dart';
import 'package:online_course/constants.dart';
import 'package:online_course/screens/detail.dart';

class TrendingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String instructor;
  final String rating;

  const TrendingCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.instructor,
    required this.rating,
  }) : super(key: key);

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: const EdgeInsets.only(right: 24),
          width: MediaQuery.of(context).size.width / 2 - 70,
          height: MediaQuery.of(context).size.height / 3 - 20,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Hero(
                tag: imageUrl,
                child: Image.asset(
                  imageUrl,
                  scale: 4,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 13,
                bottom: 23,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3 - 40,
                      child: Text(
                        title,
                        style: regular17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

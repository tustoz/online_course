import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import 'package:online_course/data/dummy.dart';

import 'package:online_course/widgets/section_subtitle.dart';
import 'package:online_course/widgets/home/session_card.dart';

class CourseList extends StatelessWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionSubtitle(
          title: 'Full Course',
          left: true,
          delay: Duration(milliseconds: 1500),
        ),
        FadeInUp(
          delay: const Duration(milliseconds: 1500),
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 23),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courseData.length,
                itemBuilder: (context, index) {
                  var title = courseData[index]['title'].toString();
                  var imageUrl = courseData[index]['imageUrl'].toString();
                  var sessions = courseData[index]['sessions'].toString();
                  var attendes = courseData[index]['attendes'].toString();
                  var description = courseData[index]['description'].toString();
                  var instructor = courseData[index]['instructor'].toString();
                  var rating = courseData[index]['rating'].toString();

                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 24, top: 5, bottom: 5),
                    child: SessionCard(
                      title: title,
                      imageUrl: imageUrl,
                      sessions: sessions,
                      attendes: attendes,
                      description: description,
                      instructor: instructor,
                      rating: rating,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

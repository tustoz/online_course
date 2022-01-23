import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:online_course/data/dummy.dart';
import 'package:online_course/widgets/section_subtitle.dart';
import 'package:online_course/widgets/home/trending_card.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionSubtitle(
          title: 'Trending',
          left: true,
          delay: Duration(milliseconds: 1300),
        ),
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 23),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingData.length,
              itemBuilder: (context, index) {
                var data = trendingData[index];
                var title = data['title'].toString();
                var imageUrl = data['imageUrl'].toString();
                var description = data['description'].toString();
                var instructor = data['instructor'].toString();
                var rating = data['rating'].toString();

                return FadeInUp(
                  delay: const Duration(milliseconds: 1300),
                  child: TrendingCard(
                    title: title,
                    imageUrl: imageUrl,
                    description: description,
                    instructor: instructor,
                    rating: rating,
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

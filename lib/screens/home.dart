import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_course/constants.dart';
import 'package:online_course/data/dummy.dart';
import 'package:online_course/widgets/search_bar.dart';
import 'package:online_course/widgets/section_title.dart';
import 'package:online_course/widgets/session_card.dart';
import 'package:online_course/widgets/trending_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/background.png',
                scale: 4,
                fit: BoxFit.fitWidth,
              ),
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 23, right: 23),
                  child: FadeInUp(
                    delay: const Duration(milliseconds: 700),
                    child: Row(
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
                                  'Maxi Aditya',
                                  style: regular17,
                                ),
                              ],
                            )
                          ],
                        ),
                        SvgPicture.asset('assets/icons/bell.svg'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: FadeInUp(
                    delay: const Duration(milliseconds: 900),
                    child: Text(
                      'What do you want\nto learn Today',
                      style: medium23,
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                FadeInUp(
                  delay: const Duration(milliseconds: 1100),
                  child: const SearchBar(),
                ),
                const SizedBox(height: 64),
                FadeInUp(
                  delay: const Duration(milliseconds: 1300),
                  child: const SectionTitle(title: 'Trending'),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingData.length,
                      itemBuilder: (context, index) {
                        var title = trendingData[index]['title'].toString();
                        var imageUrl =
                            trendingData[index]['imageUrl'].toString();
                        var description =
                            trendingData[index]['description'].toString();
                        var instructor =
                            trendingData[index]['instructor'].toString();
                        var rating = trendingData[index]['rating'].toString();

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
                FadeInUp(
                  delay: const Duration(milliseconds: 1500),
                  child: const SectionTitle(title: 'Full Courses'),
                ),
                const SizedBox(height: 18),
                SizedBox(
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
                        var description =
                            courseData[index]['description'].toString();
                        var instructor =
                            courseData[index]['instructor'].toString();
                        var rating = courseData[index]['rating'].toString();

                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 24, top: 5, bottom: 5),
                          child: FadeInUp(
                            delay: const Duration(milliseconds: 1500),
                            child: SessionCard(
                              title: title,
                              imageUrl: imageUrl,
                              sessions: sessions,
                              attendes: attendes,
                              description: description,
                              instructor: instructor,
                              rating: rating,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

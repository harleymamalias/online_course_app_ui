import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;
import 'package:online_course_app_ui/widgets/big_card_class_recommended.dart';
import 'package:online_course_app_ui/widgets/big_card_new_class.dart';
import 'package:online_course_app_ui/widgets/free_online_class_heading.dart';
import 'package:online_course_app_ui/widgets/free_online_classcard_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: app_color.bgColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Row(
                    children: [
                      Text(
                        'Online',
                        style: TextStyle(
                            color: app_color.textColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 3, 8, 8),
                  child: Row(
                    children: [
                      Text(
                        'Master Class',
                        style: TextStyle(
                            color: app_color.textColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BigCardClassRecommendedWidget(),
                      BigCardNewClass(),
                      BigCardClassRecommendedWidget(),
                      BigCardNewClass(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 3, 8, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: FreeOnlineCoursesHeading(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: [
                      FreeOnlineClassCardWidget(),
                      FreeOnlineClassCardWidget(),
                      FreeOnlineClassCardWidget(),
                      FreeOnlineClassCardWidget(),
                      FreeOnlineClassCardWidget(),
                      FreeOnlineClassCardWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
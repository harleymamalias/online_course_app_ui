import 'package:flutter/material.dart';
import 'package:online_course_app_ui/pages/my_home_page.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: app_color.bgColor,
          title: const Text(
            'Course Details',
            style: TextStyle(
                color: app_color.textColor,
                fontSize: 25,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_sharp),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
            },
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF9288E4),
              Color(0xFF534EA7)
            ], // Your gradient colors
          ),
        )
        // child: St,
        ),
      ),
    );
  }
}

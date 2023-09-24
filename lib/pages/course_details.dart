import 'package:flutter/material.dart';
import 'package:online_course_app_ui/pages/my_home_page.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;
import 'package:online_course_app_ui/widgets/course_detail_heading.dart';
import 'package:online_course_app_ui/widgets/stars_rating.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key});

  @override
  Widget build(BuildContext context) {
    const saly_36 = AssetImage('assets/Saly-36.png');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: app_color.bgColor,
          title: const Text(
            'Course Details',
            style: TextStyle(
              color: app_color.textColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
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
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [
                Color(0xFF9288E4),
                Color(0xFF534EA7),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 392,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.23, -0.97),
                    end: Alignment(-0.23, 0.97),
                    colors: [
                      Color(0xFF9288E4),
                      Color(0xFF534EA7),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -20,
                      right: -35,
                      child: Container(
                        width: 270,
                        height: 270,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFEE9F39),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 14,
                              color: Color(0xFFE4B249),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      right: 0,
                      child: Image(
                        image: saly_36,
                        alignment: Alignment.topRight,
                        width: 414,
                        height: 414,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const CourseDetailHeadingTitle(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue, // Set the desired color
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Saly-10.png',
                            height: 60,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green, // Set the desired color
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Saly-10.png',
                            height: 56,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red, // Set the desired color
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Saly-10.png',
                            height: 56,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+28k Members',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Like',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_course_app_ui/pages/my_home_page.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;
import 'package:online_course_app_ui/widgets/coursepage_details/uiuxdesiger_detail_heading.dart';
import 'package:online_course_app_ui/widgets/subjects/fundamentals_of_design.dart';

import 'package:online_course_app_ui/widgets/subjects/intro_design_graphic.dart';
import 'package:online_course_app_ui/widgets/subjects/layout_design.dart';

class UiUxDesignerBeginnerDetails extends StatelessWidget {
  const UiUxDesignerBeginnerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const saly_10 = AssetImage('assets/Saly-10.png');
    return SafeArea(
      child: Scaffold(
        backgroundColor: app_color.bgColor,
        appBar: AppBar(
          backgroundColor: app_color.bgColor,
          elevation: 10,
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 392,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.23, -0.97),
                    end: Alignment(-0.23, 0.97),
                    colors: [Color(0xFF9288E4), Color(0xFF534EA7)],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          bottomRight: Radius.circular(22))),
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
                            side:
                                BorderSide(width: 14, color: Color(0xFFE4B249)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image(
                        image: saly_10,
                        alignment: Alignment.bottomRight,
                        width: 414,
                        height: 414,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const UiUxDesignerTextTitle(),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Ellipse-3.png',
                            height: 60,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Ellipse-4.png',
                            height: 56,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Ellipse-5.png',
                            height: 56,
                            width: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      '+28k Members',
                      style: TextStyle(
                          color: Color(0xFFC9C9C9),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 54,
                      height: 47,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF353567),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    OfferedSubjectIDG(),
                    OfferedSubjectFD(),
                    OfferedSubjectLD(),
                    OfferedSubjectIDG(),
                    OfferedSubjectFD(),
                    OfferedSubjectLD(),
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

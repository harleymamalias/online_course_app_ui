import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;

class FreeOnlineCoursesHeading extends StatelessWidget {
  const FreeOnlineCoursesHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Free online class',
          style: TextStyle(
              fontSize: 25, color: app_color.textColor, fontWeight: FontWeight.w600),
        ),
        Text(
          'From over 80 Lectures',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF9C9A9A),
          ),
        ),
      ],
    );
  }
}

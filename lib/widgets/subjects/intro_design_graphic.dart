import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;
import 'package:online_course_app_ui/widgets/stars_rating.dart';

class OfferedSubjectIDG extends StatelessWidget {
  const OfferedSubjectIDG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 375,
        height: 92,
        decoration: ShapeDecoration(
          color: const Color(0xFF3E3A6D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 13,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 200,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: const Color(0xFFFFB4B4),
                    image: const DecorationImage(
                      image: AssetImage('assets/Saly-20.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Introduction Design Graphic',
                      style: TextStyle(
                        fontSize: 16,
                        color: app_color.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      '12 Minutes',
                      style: TextStyle(
                        fontSize: 12,
                        color: app_color.subTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 190,
              bottom: 20,
              child: Center(
                child: Container(
                  width: 39,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFEB53A2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Free',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

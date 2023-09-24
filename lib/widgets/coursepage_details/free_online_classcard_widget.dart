import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;
import 'package:online_course_app_ui/widgets/stars_rating.dart';

class FreeOnlineClassCardWidget extends StatelessWidget {
  const FreeOnlineClassCardWidget({
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Container(
                    width: 100,
                    height: 200,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(9),
                      ),
                      color: const Color(0xFFFFB4B4),
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/Saly-24.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 16,
                        color: app_color.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '8 Hours',
                      style: TextStyle(
                        fontSize: 12,
                        color: app_color.subTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        StarsWidget(),
                        StarsWidget(),
                        StarsWidget(),
                        StarsWidget(),
                        StarsWidget(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 20,
              bottom: 0,
              child: Center(
                child: Container(
                  width: 45,
                  height: 45, 
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(
                        0xFFEB53A2), 
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.play_arrow,
                          size: 30,
                          color: Colors.white),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

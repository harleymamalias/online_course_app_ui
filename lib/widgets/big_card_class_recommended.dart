import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;

class BigCardClassRecommendedWidget extends StatelessWidget {
  const BigCardClassRecommendedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const saly_10 = AssetImage('assets/Saly-10.png');

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 250,
          height: 350,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.23, -0.97),
              end: Alignment(-0.23, 0.97),
              colors: [Color(0xFF9288E4), Color(0xFF534EA7)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 100,
                top: 192,
                child: Container(
                  width: 195,
                  height: 179,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEE9F39),
                    shape: OvalBorder(
                      side: BorderSide(width: 14, color: Color(0xFFE4B249)),
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: Image(
                  image: saly_10,
                  alignment: Alignment.bottomRight,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(app_color.recommendedButton.value),
                    ),
                  ),
                  child: const Text(
                    'Recommended',
                    style: TextStyle(color: app_color.textColor, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Positioned(
          top: 90,
          left: 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'UI/UX DESIGNER',
                style: TextStyle(
                    color: app_color.textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'BEGINNER',
                style: TextStyle(
                    color: app_color.textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

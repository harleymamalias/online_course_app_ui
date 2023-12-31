import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;
import 'package:online_course_app_ui/pages/graphicsdesign_master_details.dart';

class BigCardNewClass extends StatelessWidget {
  const BigCardNewClass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const saly_36 = AssetImage('assets/Saly-36.png');

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
              colors: [Color(0xFFF4C465), Color(0xFFC63956)],
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
                  image: saly_36,
                  alignment: Alignment.bottomRight,
                  width: 400,
                  height: 200,
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GraphicDesignCourseDetails() ));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(app_color.newClassButton.value),
                    ),
                  ),
                  child: const Text(
                    'NEW CLASS',
                    style: TextStyle(color: Colors.white, fontSize: 15),
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
                'GRAPHIC DESIGN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'MASTER',
                style: TextStyle(
                    color: Colors.white,
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

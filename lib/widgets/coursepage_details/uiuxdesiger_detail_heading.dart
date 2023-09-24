import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;
import 'package:online_course_app_ui/widgets/stars_rating.dart';

class UiUxDesignerTextTitle extends StatelessWidget {
  const UiUxDesignerTextTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 5),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                StarsWidget(),
                StarsWidget(),
                StarsWidget(),
                StarsWidget(),
                StarsWidget(),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              'UI/UX Designer Beginner',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: app_color.textColor,
              ),
            ),
          ],
        ),
      );
  }
}

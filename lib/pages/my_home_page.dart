import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_color.bgColor,
      appBar: AppBar(
          backgroundColor: app_color.bgColor,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              onPressed: () => {},
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () => {},
          )),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
              child: Row(
                children: [
                  Text(
                    'Online',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_course_app_ui/colors/app_color.dart' as app_color;

import 'pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Course App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: app_color.bgColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

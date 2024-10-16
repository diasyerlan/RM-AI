import 'package:flutter/material.dart';
import 'package:hr_bot_app/main%20page/main_page.dart';
import 'package:hr_bot_app/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF2F2F7)
      ),
    );
  }
}

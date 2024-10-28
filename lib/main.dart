import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:hr_bot_app/const.dart';
import 'package:hr_bot_app/navbar.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NavBar(),
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF2F2F7)),
    );
  }
}

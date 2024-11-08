import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:hr_bot_app/auth/auth.dart';
import 'package:hr_bot_app/auth/login_or_register.dart';
import 'package:hr_bot_app/authorization/login_page.dart';
import 'package:hr_bot_app/authorization/register_page.dart';
import 'package:hr_bot_app/const.dart';
import 'package:hr_bot_app/firebase_options.dart';
import 'package:hr_bot_app/navbar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF2F2F7)),
    );
  }
}

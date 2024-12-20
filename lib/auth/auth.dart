import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hr_bot_app/auth/login_or_register.dart';
import 'package:hr_bot_app/main%20page/main_page.dart';
import 'package:hr_bot_app/navbar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const NavBar();
              } else {
                return LoginOrRegister();
              }
            }));
  }
}

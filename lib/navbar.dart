// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hr_bot_app/ai%20page/ai.dart';
import 'package:hr_bot_app/cv%20creation%20page/cv_creation.dart';
import 'package:hr_bot_app/main%20page/main_page.dart';
import 'package:hr_bot_app/profile%20page/profile.dart';
import 'package:hr_bot_app/vacancy%20search%20page/search.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      NavigatorPage(child: MainPage(onTap: _onItemTapped)), // Pass callback here
      NavigatorPage(child: CvCreationScreen()),
      NavigatorPage(child: AI()),
      NavigatorPage(child: VacancySearch()),
      NavigatorPage(child: ProfileScreen()),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ), // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/1.png"), size: 33), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/2.png"), size: 33), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/3.png"), size: 47), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/4.png"), size: 33), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/5.png"), size: 33), label: ""),
        ],
        currentIndex: _currentIndex, // Highlight the selected item
        selectedItemColor: Colors.black, // Color for selected item
        unselectedItemColor: Colors.black, // Color for unselected items
        onTap: _onItemTapped, // Handle item tap
      ),
    );
  }
}

class NavigatorPage extends StatelessWidget {
  final Widget child;

  const NavigatorPage({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Navigator(onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(builder: (_) => child);
    });
  }
}

import 'package:bat_foundation/constants.dart/app_colors.dart';
import 'package:bat_foundation/features/home/presentation/screens/events_screen.dart';
import 'package:bat_foundation/features/home/presentation/screens/media_center_screen.dart';
import 'package:bat_foundation/features/home/presentation/screens/project_screen.dart';
import 'package:bat_foundation/features/home/presentation/widgets/home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ProjectScreen(),
    EventsScreen(),
    MediaCenterScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [_widgetOptions.elementAt(_selectedIndex)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home_icon.png",
              width: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/nav.png",
              width: 30,
            ),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/calender.png",
              width: 30,
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/media.png",
              width: 30,
            ),
            label: 'Media centre',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}

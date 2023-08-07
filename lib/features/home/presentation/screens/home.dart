import 'package:bat_foundation/constants.dart/app_colors.dart';
import 'package:bat_foundation/features/home/presentation/widgets/home_page.dart';
import 'package:bat_foundation/router/routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
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
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.menu);
                    },
                    child: Transform.scale(
                      scale: 1.2,
                      child: Image.asset("assets/images/menu.png"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/id/237/200/300"),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            _widgetOptions.elementAt(_selectedIndex)
          ],
        ),
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

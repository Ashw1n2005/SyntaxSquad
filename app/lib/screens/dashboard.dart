import 'package:app/screens/homepage.dart';
import 'package:app/screens/settings/profilepage.dart';
import 'package:app/screens/streak_page.dart';
import 'package:app/screens/youtube_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Homepage(),
    ProfilePage(),
    YouTubeSearchScreen(initialHashtags: ['health','education','sleep'],),
    StreakPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 60,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: _selectedIndex == 0 ? Color.fromARGB(255, 113, 60, 93) : Colors.grey),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.person, color: _selectedIndex == 1 ? Color.fromARGB(255, 113, 60, 93) : Colors.grey),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(Icons.video_camera_front_rounded, color: _selectedIndex == 2 ? Color.fromARGB(255, 113, 60, 93) : Colors.grey),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(Icons.calendar_month, color: _selectedIndex == 3 ? Color.fromARGB(255, 113, 60, 93) : Colors.grey),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
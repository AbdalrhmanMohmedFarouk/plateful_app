import 'package:flutter/material.dart';
import 'package:plateful/core/features/calendar/calendar_screen.dart';
import 'package:plateful/core/features/explore/explore_screen.dart';
import 'package:plateful/core/features/favorites/favorites_screen.dart';
import 'package:plateful/core/features/home/home_screen.dart';
import 'package:plateful/core/features/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(),
      SearchScreen(),
      ExploreScreen(),
      FavoritesScreen(),
      CalendarScreen(),
    ];

    return Scaffold(
      body: screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        selectedItemColor: Color(0xFF7E8287),
        unselectedItemColor: Color(0xFF5B6169),

        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_sharp),
            label: "Calendar",
          ),
        ],
      ),
    );
  }
}


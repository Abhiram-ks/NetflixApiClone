import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'New & Hot'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Fast Laughs'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Downloads'),
      ],
        
    );
  }
}
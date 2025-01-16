import 'package:api_netflix/core/color/color.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexChengeNotifier = ValueNotifier<int>(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChengeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: newIndex,
          onTap: (index) {
            indexChengeNotifier.value = index;
          },
          selectedItemColor: white,
          unselectedItemColor: grey,
          selectedIconTheme: const IconThemeData(color: white),
          unselectedIconTheme: const IconThemeData(
            color: grey,
          ),
          backgroundColor: black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), label: 'New & Hot'),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions_outlined),label: 'Fast Laughs'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.arrow_circle_down_rounded),label: 'Downloads'),
          ],
        );
      },
    );
  }
}

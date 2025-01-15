
import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/downloads/main/widget/bottom_nav.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: black,
      bottomNavigationBar:  BottomNavigation(),
    );
  }
}
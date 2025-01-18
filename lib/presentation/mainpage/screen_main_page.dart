
import 'package:api_netflix/presentation/downloads/screen_downlods.dart';
import 'package:api_netflix/presentation/fast_laughs/fast_laughs_screen.dart';
import 'package:api_netflix/presentation/home/home_screen.dart';
import 'package:api_netflix/presentation/new_hot/new_hot_screen.dart';
import 'package:api_netflix/presentation/search/search_screen.dart';
import 'package:api_netflix/presentation/mainpage/widget/bottom_nav.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

  final _pages = [
   HomeScreen(),
   NewHotScreen(),
   FastLaughsScreen(),
   SearchScreen(),
   ScreenDownlods(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child:  ValueListenableBuilder(valueListenable: indexChengeNotifier, builder: (context, int index, _) {
        return _pages[index];
      },),),
     
      bottomNavigationBar:  BottomNavigation(),
    );
  }
}
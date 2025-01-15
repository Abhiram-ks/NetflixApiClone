import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/splash/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
       primarySwatch: primaryColor,
       scaffoldBackgroundColor: black,
      ),
      home: SplashScreen(),
    );
  }
}
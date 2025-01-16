import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/presentation/downloads/screens/section2_screen.dart';
import 'package:api_netflix/presentation/downloads/screens/section3_screen.dart';
import 'package:api_netflix/presentation/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenDownlods extends StatelessWidget {
  ScreenDownlods({super.key});

  final _widgetList = [
    const _Smartdownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: _widgetList.length,
            itemBuilder: (context, index) => _widgetList[index]));
  }
}

class _Smartdownloads extends StatelessWidget {
  const _Smartdownloads({
    // ignore: unused_element
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hight,
        Row(
          children: [
            const Icon(
              Icons.settings,
              color: white,
            ),
            width,
            Text("Smart DownLoads",
                style: GoogleFonts.montserrat(
                    color: white, fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ],
    );
  }
}

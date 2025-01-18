import 'package:api_netflix/presentation/fast_laughs/widgets/video_list_item.dart';
import 'package:flutter/material.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
       return SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) =>VideoListItem(index: index) ,)
        )
       );
  }
}
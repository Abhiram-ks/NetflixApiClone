import 'package:api_netflix/presentation/fast_laughs/widgets/video_list_item.dart';
import 'package:flutter/material.dart';

class FastLaughsScreen extends StatelessWidget {
  final AsyncSnapshot snapshot;
  const FastLaughsScreen({super.key,required this.snapshot});

  @override
  Widget build(BuildContext context) {
       return SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(20, (index) =>VideoListItem(index: index,snapshot: snapshot,) ,)
        )
       );
  }
}
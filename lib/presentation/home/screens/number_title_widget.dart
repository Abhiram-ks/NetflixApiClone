import 'package:api_netflix/presentation/home/screens/number_card.dart';
import 'package:api_netflix/presentation/widget/main_title.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const MainTitleWidget(title: "Top 10 TV shows in india Today"),
        LimitedBox(
            maxHeight: 176,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => NumberCardWidget(index: index),
                separatorBuilder: (context, index) => kwidth8,
                itemCount: 10)),
        hight,
      ],
    );
  }
}


import 'package:api_netflix/presentation/widget/main_title.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../widget/main_card_widget.dart';

class MainTitleCardWidget extends StatelessWidget {
  final String title;
  const MainTitleCardWidget({
    super.key,required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        MainTitleWidget(title:title),
        LimitedBox(
          maxHeight: 176,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) => HomeMainCard(),
             separatorBuilder: (context, index) => kwidth8, itemCount: 10)
        ),
        hight,
      ],
    );
  }
}

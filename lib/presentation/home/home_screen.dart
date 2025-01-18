import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/presentation/home/screens/animated_container.dart';
import 'package:api_netflix/presentation/home/screens/background_card.dart';
import 'package:api_netflix/presentation/home/screens/main_title_card.dart';
import 'package:api_netflix/presentation/home/screens/number_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

ValueNotifier<bool> scrollNOtifier = ValueNotifier<bool>(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrollNOtifier,
      builder: (BuildContext context, value, child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNOtifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNOtifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: [
                  BackgroundImage(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        hight,
                        const MainTitleCardWidget(
                            title: "Relesed in the Past Year"),
                        const MainTitleCardWidget(title: "Trending Now"),
                        hight,
                        NumberTitleCard(),
                        const MainTitleCardWidget(title: "Tense Dramas"),
                        const MainTitleCardWidget(title: "South Indian Cinema"),
                      ],
                    ),
                  )
                ],
              ),
              scrollNOtifier.value == true
                  ? CustomAnimatedCotainer()
                  : hight
            ],
          ),
        );
      },
    );
  }
}

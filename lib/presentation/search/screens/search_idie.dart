import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/presentation/search/screens/search_text_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const imageUrl =
    "https://image.tmdb.org/t/p/w1280/6BT2vjhg6L76O4O74dFikNqZvLA.jpg";

class SearchIdieWidget extends StatelessWidget {
  const SearchIdieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var children = [
        const SearchTextTitle(title: 'Top Search',),
        hight,
        Expanded(
          child: ListView.separated(
             shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchIteamIdiel(),
              separatorBuilder: (context, index) => khight18,
              itemCount: 15),
        )
      ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}


class TopSearchIteamIdiel extends StatelessWidget {
  const TopSearchIteamIdiel({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 66,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),width,
        const Expanded(child: Text('Movie name',style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 16),)),
        const CircleAvatar(
          backgroundColor: white,
          radius: 24,
          child: CircleAvatar(
            backgroundColor: black,
            radius: 23.4,
            child: Icon(CupertinoIcons.play_arrow_solid, color: white,),
          ),
        )
      ],
    );
  }
}

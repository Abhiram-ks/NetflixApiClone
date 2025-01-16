import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/presentation/search/screens/search_idie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  // ignore: deprecated_member_use
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  prefixIcon:const Icon(CupertinoIcons.search,color: avatarGray,) ,
                  suffixIcon:const Icon(CupertinoIcons.xmark_circle_fill,color: avatarGray,),
                  style: TextStyle(color: white),
                ), hight,
                Expanded(child: const SearchIdieWidget())
              ],
            ),
          )),
      );
  }
}
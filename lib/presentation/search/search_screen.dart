import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/presentation/search/screens/search_idie.dart';
import 'package:api_netflix/presentation/search/screens/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchQuery = '';
  @override
  Widget build(BuildContext context) {
      return SafeArea(
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
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                ), hight,
                Expanded(child: searchQuery.isEmpty?
                 const SearchIdieWidget() : SearchResultWidget())
              ],
            ),
          ));
  }
}
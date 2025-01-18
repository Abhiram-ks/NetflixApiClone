import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/presentation/search/screens/search_text_title.dart';
import 'package:flutter/material.dart';

import '../../../api/api.dart';
import '../../../core/color/color.dart';
import '../../../models/movie.dart';

const imageURl2 =
    "https://image.tmdb.org/t/p/original/wigZBAmNrIhxp2FNGOROUAeHvdh.jpg";

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({super.key});

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  late Future<List<Movie>> movieTvList;
  @override
  void initState() {
    super.initState();
    movieTvList = ApiService().top10TvShow();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        hight,
        Expanded(
            child: FutureBuilder(
          future: movieTvList,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: CircularProgressIndicator(
                  color: red,
                  backgroundColor: black,
                ),
              );
            } else if (snapshot.hasData) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 1.1 / 1.6,
                children: List.generate(20, (index) {
                  return  MainCardWidget(index: index,snapshot: snapshot,);
                }),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: red,
                  backgroundColor: black,
                ),
              );
            }
          },
        ))
      ],
    );
  }
}

class MainCardWidget extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final int index;
  const MainCardWidget(
      {super.key, required this.snapshot, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image:  DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                '${Constants.imagePath}${snapshot.data[index].poseterPath}',
              ))),
    );
  }
}

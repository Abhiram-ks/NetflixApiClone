import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/presentation/search/screens/search_text_title.dart';
import 'package:flutter/cupertino.dart';

const imageURl2 =
    "https://image.tmdb.org/t/p/original/wigZBAmNrIhxp2FNGOROUAeHvdh.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        hight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 1.1 / 1.6,
          children: List.generate(12, (index) {
            return const MainCardWidget();
          }),
        ))
      ],
    );
  }
}

class MainCardWidget extends StatelessWidget {
  const MainCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageURl2,
              ))),
    );
  }
}

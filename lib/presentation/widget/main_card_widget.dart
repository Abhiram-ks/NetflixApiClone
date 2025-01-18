
import 'package:flutter/material.dart';

import '../../core/constants.dart';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final Size displaysize = MediaQuery.of(context).size;
    return Container(
      width: displaysize.width*0.33,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: kRadius9,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
          'https://s3.amazonaws.com/static.rogerebert.com/uploads/movie/movie_poster/the-ghost-of-peter-sellers-2020/large_peter-poster.jpg'
        ))
      ),
    );
  }
}
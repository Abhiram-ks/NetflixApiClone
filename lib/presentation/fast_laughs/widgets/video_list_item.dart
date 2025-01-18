
import 'package:api_netflix/core/color/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'video_emotion.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        color:Colors.accents[index % Colors.accents.length] ,
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //*Left side portion
            CircleAvatar(
              // ignore: deprecated_member_use
              backgroundColor: Colors.black.withOpacity(0.6),
              radius: 30,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.volume_off,color: white,))),

              //*Right side portion
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage('https://www.thefashionisto.com/wp-content/uploads/2018/05/Good-Looking-Man-800x1200.jpg'),
                  ),
                ),
                 VideoEmotionsActions(icon: Icons.emoji_emotions, title: 'LOL'),
                 VideoEmotionsActions(icon: CupertinoIcons.add, title: 'My List'),
                 VideoEmotionsActions(icon: Icons.share, title: 'Share'),
                 VideoEmotionsActions(icon: Icons.play_arrow, title: 'Play'),

                  
                ],
              )
          ],),
        ),
      )
      ],
    );
  }
}


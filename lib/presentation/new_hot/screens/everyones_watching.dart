import 'package:api_netflix/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/color/color.dart';
import '../../../core/constants.dart';
import '../../widget/vidoe_widget.dart';

class EveryonesWachingWIdget extends StatelessWidget {
  const EveryonesWachingWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            hight,
             Text(
                'Friends',
                style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w900, fontSize: 18, height: 1.7),
              ),
              const Text(
                'Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence -- and her relactionship -- info a tailpin.',
                style: TextStyle(color: avatarGray),
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
              ),hight35,
             const VideoShowWIdget(imageUrl: everyonesImage,),hight,
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               CustomButtonWidget(icon: Icons.share_outlined, title: 'Share',textSize: 10,iconSize: 23,),width,
               CustomButtonWidget(icon: Icons.add, title: 'MyList',textSize: 10),width,
               CustomButtonWidget(icon: Icons.play_arrow, title: 'Play',textSize: 10,),width,
              ],
             )
            ],
          ),
        );
  }
}
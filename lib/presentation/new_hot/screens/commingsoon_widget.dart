import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/presentation/widget/vidoe_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants.dart';
import '../../widget/custom_button.dart';

class CommingSoonWIdgetMain extends StatelessWidget {
  const CommingSoonWIdgetMain({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        hight,
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 460,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'FEB',
                    style:
                        TextStyle(color: avatarGray, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '11',
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 4),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width - 60,
              height: 460,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VideoShowWIdget(imageUrl:commingSoonImage ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: Text(
                            'TALL GIRL 2',
                            style: GoogleFonts.atma(
                              fontSize: 36,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 194, 194, 194),
                              height: 2.3
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            CustomButtonWidget(
                                icon: Icons.notifications_on_outlined,
                                title: 'Remind Me', iconSize: 17, textSize: 7,),
                            width,
                            CustomButtonWidget(
                                icon: Icons.info_outline_rounded, title: 'Info',textSize: 7,iconSize: 17,),
                            width,
                          ],
                        ),
                      )
                    ],
                  ),
                  Text('Comming on Friday'),
                  hight,
                  Image.network('https://vectorseek.com/wp-content/uploads/2023/10/Netflix-Films-Logo-Vector.png',height:30 ,width: 60,),hight,
                  Text('Tall Girl 2',style: GoogleFonts.lexend(fontWeight: FontWeight.w900,fontSize: 18,height: 1.7)
                  ,),hight,
                  Text('Landing the lead in the school musical is a dream come true for jodi, until the pressure sends her confidence -- and her relactionship -- info a tailpin. ',style: TextStyle(color: avatarGray),
                  overflow: TextOverflow.ellipsis,maxLines: 5,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
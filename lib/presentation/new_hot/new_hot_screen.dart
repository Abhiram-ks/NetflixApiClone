import 'package:api_netflix/core/color/color.dart';
import 'package:api_netflix/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewHotScreen extends StatelessWidget {
  const NewHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: black,
            title: Text(
              "New & Hot",
              style: GoogleFonts.montserrat(
                  fontSize: 29, color: white, fontWeight: FontWeight.w900),
            ),
            actions: [
              const Icon(Icons.cast, color: white, size: 30),
              width,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color.fromARGB(255, 19, 89, 67),
                ),
                height: 30,
                width: 30,
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 3.0,
                          top: 8,
                        ),
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 6.0,
                          top: 8,
                        ),
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    )
                  ],
                ),
              ),
              width
            ],
            bottom: TabBar(
                padding: EdgeInsets.symmetric(horizontal: 10),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: black,
                unselectedLabelColor: white,
                indicator: BoxDecoration(color: white, borderRadius: kRadius30),
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                labelColor: black,
                tabs: [
                  Tab(
                    text: "🍿   Comming Soon",
                  ),
                  Tab(
                    text: "👀  Everyone's Watch",
                  ),
                ]),
          ),
          body: TabBarView(children: [
            _buildEveryONesWatching(context),
            _buildCommingSoon(),
            
          ]),
        ));
  }
}

Widget _buildEveryONesWatching(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  return ListView(
    children: [
      hight,
      Row(
        children: [
          SizedBox(width: 50,height: 500,child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text('FEB',style: TextStyle(color: avatarGray,fontWeight: FontWeight.bold),),
            Text('11',style:TextStyle(fontSize: 33,fontWeight: FontWeight.w900,letterSpacing: 4),),
          ],),),
          SizedBox(
            width: size.width-60,
            height: 500,
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: SizedBox(
                        width: double.infinity,
                        height: 170,
                        child: Image.network(commingSoonImage,fit: BoxFit.cover,),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: CircleAvatar(
                        radius: 17,
                        // ignore: deprecated_member_use
                        backgroundColor: black.withOpacity(0.5),
                        child: IconButton(onPressed: (){},
                         icon: Icon(Icons.volume_off,color: white,size: 17,)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )
    ],
  );
}

Widget _buildCommingSoon() {
  return Container(
    width: double.infinity,
    height: 100,
    color: white,
  );
}

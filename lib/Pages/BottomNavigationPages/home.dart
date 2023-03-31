import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rizq_bachao/Ui%20Kit/ui.dart';

import 'forum.dart';
import 'goals.dart';
import 'message.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.h,
        backgroundColor: MyColor.bottomNavigationBar,
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  "Rizq Bachao",
                  style: GoogleFonts.roboto(
                    fontSize: 24.sp,
                    color: MyColor.textColor1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: MyColor.cardBack,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 9),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            "assets/icons/filter.png",
                          ),
                          color: MyColor.textColor1,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Filter",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: MyColor.textColor1,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            color: MyColor.textColor1,
            onPressed: () {},
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              offset: Offset.fromDirection(2),
                              blurRadius: 20,
                              spreadRadius: 3,
                              color: MyColor.inActive
                          )],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "assets/Vector/loudspeaker.png")),
                                Text(
                                  "Spread the world!",
                                  style: GoogleFonts.roboto(
                                    fontSize: 24.sp,
                                    color: MyColor.textColor1,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: MyColor.iconActive,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                    'Wishes there were more items near you? Help spread the world about Rizq Bachao! ',
                                style: GoogleFonts.roboto(
                                  fontSize: 16.sp,
                                  color: MyColor.iconActive,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                        color: MyColor.mainColor1,
                                        borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Find out more",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.h,),
              Row(
                children: [
                  Text(
                    "Nearly Available Food ",
                    style: GoogleFonts.roboto(
                      fontSize: 24.sp,
                      color: MyColor.textColor1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.h,),
Card()
            ],
          ),
        ),
      ),
    );
  }
}

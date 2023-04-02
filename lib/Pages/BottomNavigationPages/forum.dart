import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Ui Kit/ui.dart';

class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
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
                  "Forum",
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
                          "Category",
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
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              for(int i = 0; i <= 20; i++)
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Card(
                        color: MyColor.cardBack,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/Vector/avatar.png"),
                                        radius: 30.sp,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            2.5,
                                                    child: Text(
                                                      "Sara posted in Spreading the world",
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 16.sp,
                                                        color:
                                                            MyColor.textColor1,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 70.w,
                                                  ),
                                                  Icon(
                                                    Icons.flag_outlined,
                                                    size: 30,
                                                    color: MyColor.inActive,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    size: 15,
                                                    color: MyColor.inActive,
                                                  ),
                                                  SizedBox(
                                                    width: 10.h,
                                                  ),
                                                  Text(
                                                    "41 minutes ago",
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 14.sp,
                                                      color: MyColor.inActive,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.w,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            'With all the post’s complaining about the sale section there’s just going to free stuff & nothing to buy ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          color: MyColor.iconActive,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.w,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 60.h,
                              decoration: BoxDecoration(
                                  color: MyColor.cardBottom,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/icons/comment.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "2 Comments",
                                      style: GoogleFonts.roboto(
                                        fontSize: 18.sp,
                                        color: MyColor.inActive,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image(
                                      image:
                                          AssetImage("assets/icons/heart.png"),
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "2 likes",
                                      style: GoogleFonts.roboto(
                                        fontSize: 18.sp,
                                        color: MyColor.inActive,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
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
    );
  }
}

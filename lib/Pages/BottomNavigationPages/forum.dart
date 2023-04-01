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
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Card(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  child: Image(
                                    image:
                                    AssetImage("assets/Vector/avatar.png"),
                                    width: MediaQuery.of(context).size.width * .27,
                                    height: 80.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 14.w,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width:
                                          MediaQuery.of(context).size.width / 1.3,
                                          child: Text(
                                            "Sara posted in Spreading The world",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16.sp,
                                              color: MyColor.textColor1,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.access_time_outlined, size: 10, color: MyColor.inActive,)
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),

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

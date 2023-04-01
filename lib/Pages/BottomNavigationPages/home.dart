import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rizq_bachao/Ui%20Kit/ui.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isheart = false;

  int count = 6;

  bool isvisible = true;
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
              
              Visibility(
                visible: isvisible ? true : false,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset.fromDirection(2),
                                  blurRadius: 20,
                                  spreadRadius: 3,
                                  color: MyColor.inActive)
                            ],
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
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isvisible = false;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyColor.iconActive,
                                          borderRadius: BorderRadius.circular(100)),
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
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
              ),
              SizedBox(
                height: 14.h,
              ),
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
              SizedBox(
                height: 14.h,
              ),
              for(int i = 0; i <= 20; i++)
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Card(
                        child: Row(
                          children: [
                            Image(
                              image:
                                  AssetImage("assets/Vector/hungery_girl.png"),
                              width: MediaQuery.of(context).size.width * .27,
                              height: 130.sp,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: Text(
                                        "Mixed Salad Sara",
                                        style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          color: MyColor.textColor1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.w,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "41 minutes ago",
                                      style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: MyColor.inActive,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.w,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        for (var i = 0; i <= 4; i++)
                                          Icon(
                                            Icons.star,
                                            color: CupertinoColors.systemYellow,
                                            size: 16,
                                          ),
                                      ],
                                    ),
                                   SizedBox(width: 15,),
                                   GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if(isheart){
                                            isheart = false;
                                            count = count-1;
                                          }
                                          else {
                                            isheart = true;
                                            count = count+1;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        isheart ? Icons.favorite : Icons.favorite_border,
                                        color: MyColor.mainColor1,
                                        size: 16,
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      "${count}",
                                      style: GoogleFonts.roboto(
                                        fontSize: 12.sp,
                                        color: MyColor.inActive,
                                      ),
                                    ),
                                    SizedBox(width: 80,),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if(isheart){
                                            isheart = false;
                                            count = count-1;
                                          }
                                          else {
                                            isheart = true;
                                            count = count+1;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        isheart ? Icons.remove_red_eye : Icons.close,
                                        color: MyColor.mainColor1,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
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

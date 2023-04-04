import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Ui Kit/ui.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 120.h,
        backgroundColor: MyColor.bottomNavigationBar,
        centerTitle: false,
        title: Text(
          "Message",
          style: GoogleFonts.roboto(
            fontSize: 24.sp,
            color: MyColor.textColor1,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: "Search Message ..."
              ),
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                Text(
                  "Frequently contacted",
                  style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    color:
                    MyColor.textColor1,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for(int i = 0; i<=20; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              boxShadow: [
                                BoxShadow(color: MyColor.inActive, spreadRadius: 1, blurRadius: 8)
                              ],
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius
                                .circular(100
                                .r), // Image border
                            child:
                            SizedBox.fromSize(
                              size: Size.fromRadius(
                                  30.r), // Image radius
                              child: Image(
                                image: AssetImage(
                                    "assets/Vector/avatar.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

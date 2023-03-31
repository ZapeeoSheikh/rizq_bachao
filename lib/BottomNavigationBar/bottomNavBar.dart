import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:rizq_bachao/Pages/BottomNavigationPages/forum.dart';
import 'package:rizq_bachao/Pages/BottomNavigationPages/goals.dart';
import 'package:rizq_bachao/Pages/BottomNavigationPages/home.dart';
import 'package:rizq_bachao/Pages/BottomNavigationPages/message.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../Ui Kit/ui.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int currentTab = 0;
    List pages = [
      Home(),
      Goals(),
      Forum(),
      Message(),
    ];
    final PageStorageBucket bucket = PageStorageBucket();
    Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColor.bottomNavigationBar,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColor.mainColor1,
        child: Icon(Icons.add),
        onPressed: () {

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/home.png"),
                          color: currentTab == 0
                              ? MyColor.mainColor1
                              : MyColor.inActive,
                        ),
                        Text(
                          " Home ",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: currentTab == 0
                                ? MyColor.mainColor1
                                : MyColor.inActive,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Goals();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fiber_smart_record,
                          color: currentTab == 1
                              ? MyColor.mainColor1
                              : MyColor.inActive,
                        ),
                        Text(
                          " Goals ",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: currentTab == 1
                                ? MyColor.mainColor1
                                : MyColor.inActive,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Forum();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/chat.png"),
                          color: currentTab == 2
                              ? MyColor.mainColor1
                              : MyColor.inActive,
                        ),
                        Text(
                          " Forum ",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: currentTab == 2
                                ? MyColor.mainColor1
                                : MyColor.inActive,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Message();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/message.png"),
                          color: currentTab == 3
                              ? MyColor.mainColor1
                              : MyColor.inActive,
                        ),
                        Text(
                          "Message",
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: currentTab == 3
                                ? MyColor.mainColor1
                                : MyColor.inActive,
                          ),
                        ),
                      ],
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

// Future<void> popupLoc() async {
//   showAdaptiveActionSheet(
//     context: context,
//     title: Row(
//       children: [
//         Expanded(
//           child: Container(
//             height: 66.sp,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(20.0)),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 1,
//                   blurRadius: 5,
//                   offset: Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: ElevatedButton(
//               style: ButtonStyle(
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15.0),
//                       )),
//                   backgroundColor:
//                   MaterialStateProperty.all(MyColor.mainColor1)),
//               onPressed: () async {
//                 setState(() async {
//                   CheckUserConnection();
//                   if (ActiveConnection == false) {
//                     print("Internet Off");
//                     print(ActiveConnection);
//                   } else {
//                     print("Internet On");
//                     print(ActiveConnection);
//                     Navigator.pop(context);
//                   }
//                 });
//               },
//               child: Text(
//                 'TRY AGAIN',
//                 style: TextStyle(color: Colors.white, fontSize: 20.sp),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//     actions: <BottomSheetAction>[
//       BottomSheetAction(
//         title: Container(
//           height: MediaQuery.of(context).size.height / 4.sp,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image(
//                 image: AssetImage("images/vector/no_wifi.png"),
//                 width: 50.sp,
//               ),
//               SizedBox(
//                 height: 5.sp,
//               ),
//               Text(
//                 "Internet Connection Invaild !!",
//                 style: TextStyle(color: MyColor.inActive, fontSize: 15.sp),
//               ),
//             ],
//           ),
//         ),
//         onPressed: (BuildContext context) {
//           setState(() {});
//         },
//       ),
//     ],
//   );
// }
// Future<void> getProfile() async {
//   Map<String, String> headers = {
//     'Content-Type': 'application/json',
//     'Authorization': 'Bearer ${globals.token}'
//   };
//
//   try {
//     Response response = await get(
//       Uri.parse(AppUrl.getById + globals.Username),
//       headers: headers,
//     );
//     print(response.body);
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body.toString());
//       setState(() {
//         globals.Name = data['customerName'] ?? "";
//         globals.Email = data['email']  ?? "";
//         globals.Profile = data['image']  ?? "";
//
//         if(data["status"] == "404" && data["message"] == "Customer Not Found"){
//           isProfile = false;
//         }
//       });
//
//     } else
//       ScaffoldMessenger.of(context).showSnackBar(globals.error);
//   } catch (e) {
//     print(e.toString());
//   }
// }
}

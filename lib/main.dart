import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rizq_bachao/BottomNavigationBar/bottomNavBar.dart';
import 'package:rizq_bachao/Pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              "/bottomNav": (_) => new BottomNavBar(),

            },
            theme: ThemeData(

                // primarySwatch: Colors.blue,
                ),
            home: const Signup(),
          );
        });
  }
}

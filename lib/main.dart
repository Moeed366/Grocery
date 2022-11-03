import 'package:delivery_rider/Screens/Completed_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Screens/Home_loading.dart';
import 'Screens/Order-number.dart';
import 'Screens/Order_success.dart';
import 'Screens/Pending_order.dart';
import 'Screens/User_profile.dart';
import 'Screens/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Notification',
            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            home: HomePageScreen(),

          );}
    );
  }
}


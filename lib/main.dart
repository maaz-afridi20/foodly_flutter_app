import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food_app/constants/constants.dart';
import 'package:multi_vendor_food_app/views/entry_point.dart';

Widget defaultHome = const MainScreen();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 825),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Foodly',
              theme: ThemeData(
                  useMaterial3: true,
                  scaffoldBackgroundColor: kOffWhite,
                  iconTheme: const IconThemeData(color: kDark),
                  primarySwatch: Colors.grey),
              home: defaultHome);
        });
  }
}

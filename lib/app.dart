import 'package:ostad_cart_assignment/Themes/appbar_style.dart';
import 'package:ostad_cart_assignment/Themes/elevated_button_style.dart';
import 'package:ostad_cart_assignment/Utils/scroll_behavior.dart';
import 'package:ostad_cart_assignment/View/HomeScreen/home_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBag extends StatelessWidget {
  const MyBag({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Bag App',
      home: const HomeScreenView(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9F9F9),
        appBarTheme: AppbarStyle.getAppbarStyle(),
        elevatedButtonTheme: ElevatedButtonStyle.getElevatedButtonStyle(),
      ),
      scrollBehavior: AppScrollBehaviour(),
    );
  }
}

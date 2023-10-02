import 'package:flutter/material.dart';

import 'Const/custom_widget.dart';
import 'View/LandingPage/landing_page.dart';
import 'View/bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: primaryColor,
            toolbarHeight: 65,
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            fillColor: Color(0xffECECEC),
            filled: true,
            suffixIconColor: Color(0xffC0BFBF),
          ),

          buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(vertical: 5),
              minWidth: double.infinity,
                     buttonColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
              ),
          ),
      ),
      home: NavBar(),
    );
  }
}


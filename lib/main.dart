import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:lab_ui_design/screens/home/home_screen.dart';
import 'package:lab_ui_design/screens/log_in/log_in.dart';
import 'package:lab_ui_design/screens/sign_up/sign_up.dart';
import 'package:lab_ui_design/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static String scr = "/SignUpScreen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.scr,
      routes: {
        WelcomeScreen.scr :(ctx) => WelcomeScreen(),
        SignUpScreen.scr :(ctx) => SignUpScreen(),
        Home.scr :(ctx) => Home(),
        LogIn.scr : (ctx) => LogIn(),
        BuildBottomNavigationBar.scr : (ctx) => BuildBottomNavigationBar(),
      },
    );
  }
}
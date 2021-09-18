import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/welcome_screen//components/body.dart';


class WelcomeScreen extends StatefulWidget {
  static String scr = "/WelcomeScreen";


  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Body(),
      ),
    );
  }
}

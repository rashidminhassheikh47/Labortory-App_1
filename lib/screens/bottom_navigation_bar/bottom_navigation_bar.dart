import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/home/home_screen.dart';

class BuildBottomNavigationBar extends StatefulWidget {
  static String scr = "/BottomNavigationBar";

  @override
  _BuildBottomNavigationBarState createState() => _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  int currentScreen = 0;
  List<Widget> screens = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(currentScreen),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index){

          setState(() {
            currentScreen=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind_sharp,
            ),
            label: "Investigation",
          ),
          BottomNavigationBarItem(
            label: "Help",
            icon: Icon(
              Icons.health_and_safety,
            ),
          ),
        ],
      ),
    );
  }
}

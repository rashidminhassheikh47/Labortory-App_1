import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:lab_ui_design/screens/home/home_screen.dart';
import 'package:lab_ui_design/screens/sign_up/components/re_usable_btn.dart';
import 'package:lab_ui_design/screens/sign_up/sign_up.dart';

class LogIn extends StatelessWidget {
  static String scr = "/Login";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height - 400,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/doctor_banner1.jpg"),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 250),
                height: size.height - 250,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            child: Text(
                              "buzz a doctor".toUpperCase(),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          buildTextField(hintText: 'Email/Phone No',),
                          buildTextField(hintText:"Password",icon: Icon(Icons.remove_red_eye),),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.normal),
                                  )),
                              SizedBox(
                                width: 40,
                              ),
                            ],
                          ),
                          ReUsableButton(
                            title: "Login",
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            onPress: () {
                              Navigator.pushNamed(context, BuildBottomNavigationBar.scr);
                            },
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Divider(
                          thickness: 2,
                          color: Colors.black54,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an Account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildTextField({required String hintText,Icon? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1)),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54,width: 1)),
            hintStyle: TextStyle(color: Colors.black),
            suffixIcon: icon),
      ),
    );
  }
}

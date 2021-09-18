import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/sign_up/sign_up.dart';
import 'package:lab_ui_design/screens/welcome_screen/components/slider_and_model/slider_dot.dart';
import 'package:lab_ui_design/screens/welcome_screen//components/slider_and_model/slider_item.dart';
import 'package:lab_ui_design/screens/welcome_screen//components/slider_and_model/slider_model.dart';

import 'buttons/sign_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 5), (timer) {
  //     if (currentPage < 2) {
  //       currentPage++;
  //     } else {
  //       currentPage = 0;
  //     }
  //     _pageController.animateToPage(
  //       currentPage,
  //       duration: Duration(milliseconds: 300),
  //       curve: Curves.easeIn,
  //     );
  //   });
  // }

  onPageChange(index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
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
                      child: Stack(
                        children: [
                          PageView.builder(
                            itemCount: slideList.length,
                            controller: _pageController,
                            onPageChanged: onPageChange,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, i) => SlideItem(i),
                          ),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 160),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    for (int a = 0; a < slideList.length; a++)
                                      if (a == currentPage)
                                        SlideDots(true)
                                      else
                                        SlideDots(false)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SignButton(
                          title: "Sign in with Facebook",
                          backgroundColor: Colors.blueAccent,
                          textColor: Colors.white,
                          icon: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage("assets/icons/facebook_icon.png"),
                          ),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        SignButton(
                          onPress: () {
                            Navigator.pushNamed(context, SignUpScreen.scr);
                          },
                          title: "Sign in with Google",
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          icon: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage("assets/icons/google_icon.png"),
                          ),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        SignButton(
                          title: "Sign in with Email",
                          backgroundColor: Colors.transparent,
                          textColor: Colors.black,
                          icon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          borderSide: BorderSide(),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.black54,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an Account?"),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        )
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
}

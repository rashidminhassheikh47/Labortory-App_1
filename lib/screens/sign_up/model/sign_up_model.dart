import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/sign_up/components/re_usable_btn.dart';
import 'package:lab_ui_design/screens/sign_up/model/text_field_item.dart';

class SignUpFiledViews {
  final Widget view;
  final String title;

  SignUpFiledViews({required this.view,required this.title});
}

List<SignUpFiledViews> signScreens = [
  SignUpFiledViews(
    view: Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.maxFinite,
          height: 80,
          child: Text(
            "What is your laboratory's address?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        TextFieldItem(
          hintText: "Country",
        ),
        TextFieldItem(
          hintText: "State",
        ),
        TextFieldItem(
          hintText: "Town/City",
        ),
        TextFieldItem(
          hintText: "Pharmacy Line",
        ),
        TextFieldItem(
          hintText: "Address Line 1",
        ),
        TextFieldItem(
          hintText: "Address Line 2",
        ),
        TextFieldItem(
          hintText: "Address Line 3",
        ),
      ],
    ), title: 'Next',
  ),
  SignUpFiledViews(
    view: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 100,
          width: double.maxFinite,
          child: Text(
            "What is your laboratory's address?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          height: 50,
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: Color(0xF9F9F9F9),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0xD5D5D5D5),
                width: 1,
              )),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xD5D5D5D5),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 35,
                width: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage:
                          AssetImage("assets/icons/google_icon.png"),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "+92",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Text(
                "|",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Phone Number",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ],
          ),
        ),

      ],
    ), title: 'Next',
  ),
  SignUpFiledViews(
    view: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 150,
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Contact Person",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        TextFieldItem(
          hintText: "First Name",
        ),
        TextFieldItem(
          hintText: "Surname",
        ),
      ],
    ), title: 'Next',
  ),
  SignUpFiledViews(
    view: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 150,
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Almost Done",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        TextFieldItem(
          hintText: "Email",
        ),
        TextFieldItem(
          hintText: "Password",
        ),
        TextFieldItem(
          hintText: "Confirm Password",
        ),
      ],
    ), title: 'Next',
  ),
  SignUpFiledViews(
    view: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 100,
          width: double.maxFinite,
          child: Text(
            "How did you hear about us?",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Container(
          height: 50,
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: Color(0xF9F9F9F9),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0xD5D5D5D5),
                width: 1,
              )),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 18,
                backgroundImage:
                AssetImage("assets/icons/facebook_icon.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  "Facebook",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.arrow_drop_down))
            ],
          ),
        ),

        SizedBox(height: 150,),
        Divider(
          thickness: 1,
          color: Colors.grey,
          indent: 30,
          endIndent: 30,
          height: 50,
        ),
        Text(
          "By completing this signup you agree to \n our terms, policy and  consent. "
        )
      ],
    ), title: 'Complete',
  ),
];

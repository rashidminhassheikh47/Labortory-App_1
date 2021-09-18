import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/sign_up/components/re_usable_btn.dart';
import 'package:lab_ui_design/screens/sign_up/model/text_field_item.dart';

List<Widget> signScreens = [
  Column(
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
      ReUsableButton(),
    ],
  ),
  Column(
    children: [
      Container(
        height: 100,
        width: double.maxFinite,
        child: Text(
          "What is your laboratory's address?",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      )
    ],
  ),
  Column(
    children: [],
  ),
];



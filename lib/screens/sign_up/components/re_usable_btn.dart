import 'package:flutter/material.dart';

class ReUsableButton extends StatelessWidget {
  ReUsableButton({this.onPress});
  final dynamic onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      margin: EdgeInsets.all(50),
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40))),
          backgroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: onPress,
        child: Text(
          "Next",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
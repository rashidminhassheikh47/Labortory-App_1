import 'package:flutter/material.dart';

class ReUsableButton extends StatelessWidget {
  ReUsableButton({this.onPress,required this.margin,required this.title});
  final dynamic onPress;
  final EdgeInsetsGeometry margin;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      margin: margin,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40))),
          backgroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
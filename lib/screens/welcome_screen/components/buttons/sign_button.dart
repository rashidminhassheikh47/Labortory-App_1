import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {

  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Widget icon;
  final BorderSide borderSide;
  final dynamic onPress;
  const SignButton({
    Key? key,this.onPress, required this.title,required this.backgroundColor,required this.textColor,required this.icon,required this.borderSide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30,left: 30,top: 8,bottom: 8),
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(borderSide),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(double.maxFinite, 50),
          ),
          backgroundColor:
          MaterialStateProperty.all(backgroundColor),
        ),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            Expanded(
              child: Text(
                title,textAlign: TextAlign.center,
                style: TextStyle(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

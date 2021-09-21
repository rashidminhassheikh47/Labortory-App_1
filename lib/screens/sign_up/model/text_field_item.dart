import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  TextFieldItem({required this.hintText});
final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(

      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: TextFormField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: Color(0xF9F9F9F9),
            filled: true,
            // suffixIcon: Icons.arrow_drop_down,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}

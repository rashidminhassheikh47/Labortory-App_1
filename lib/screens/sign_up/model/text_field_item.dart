import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  TextFieldItem({required this.hintText});
final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            // suffixIcon: Icons.arrow_drop_down,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}

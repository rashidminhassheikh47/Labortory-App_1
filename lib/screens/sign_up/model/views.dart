import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/sign_up/components/re_usable_btn.dart';
import 'package:lab_ui_design/screens/sign_up/model/sign_up_model.dart';

class Views extends StatelessWidget {
  final int index;
  final Function onPress;

  Views({required this.index, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        signScreens[index].view,
        ReUsableButton(
          title: signScreens[index].title,
          onPress: onPress,
          margin: EdgeInsets.all(50),
        ),
      ],
    );
  }
}

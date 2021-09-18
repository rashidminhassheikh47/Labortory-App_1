import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/welcome_screen//components/slider_and_model/slider_model.dart';


class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          slideList[index].title.toUpperCase(),
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 14
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

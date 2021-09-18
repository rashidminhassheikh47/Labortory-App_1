import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/sign_up/model/sign_up_model.dart';
import 'package:lab_ui_design/screens/sign_up/model/text_field_item.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpScreen extends StatefulWidget {
  static String scr = "/SignUpScreen";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = true;
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    RoundCheckBox buildCheckBoxBtn() {
      return RoundCheckBox(
        onTap: (onTap) {
          setState(() {
            if (isChecked == true) {
              isChecked = false;
            } else {
              isChecked = true;
            }
          });
        },
        checkedWidget: Icon(
          Icons.check,
          size: 20,
          color: Colors.white,
        ),
        isChecked: isChecked,
        size: 25,
        checkedColor: isChecked ? Colors.black : Colors.grey,
        uncheckedColor: Colors.transparent,
        border: Border.all(
            width: 2,
            color: isChecked ? Colors.transparent : Colors.grey),
        // checkedWidget: Icon(Icons.check,color: Colors.white,),
      );
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("buzz a doctor".toUpperCase()),
          centerTitle: true,
          toolbarHeight: 70,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              color: Colors.white,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildCheckBoxBtn(),
                  buildUnderScoreContainer(),
                  buildCheckBoxBtn(),
                  buildUnderScoreContainer(),
                  buildCheckBoxBtn(),
                  buildUnderScoreContainer(),
                  buildCheckBoxBtn(),
                  buildUnderScoreContainer(),
                  buildCheckBoxBtn(),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              width: size.width,
              height: size.height - 180,
              child: PageView.builder(
                itemBuilder: (ctx, index) => SingleChildScrollView(child: signScreens[index],),
                itemCount: 4,
                onPageChanged: (index){
                  setState(() {
                    currentScreen = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              )
            ),
          ],
        ),
      ),
    );
  }

  Container buildUnderScoreContainer() {
    return Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey,
                  ),
                  height: 4,
                  width: 16,
                );
  }
}

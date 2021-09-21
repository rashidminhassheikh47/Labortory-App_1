import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_ui_design/screens/home/home_screen.dart';
import 'package:lab_ui_design/screens/sign_up/model/sign_up_model.dart';
import 'package:lab_ui_design/screens/sign_up/model/text_field_item.dart';
import 'package:lab_ui_design/screens/sign_up/model/views.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpScreen extends StatefulWidget {
  static String scr = "/SignUpScreen";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    RoundCheckBox buildCheckBoxBtn(
        {required bool checkCondition, required Color color}) {
      return RoundCheckBox(
        onTap: (d){},
        checkedWidget: Icon(
          Icons.check,
          size: 20,
          color: Colors.white,
        ),
        isChecked: checkCondition,
        size: 25,
        checkedColor: Colors.black,
        uncheckedColor: Colors.transparent,
        border: Border.all(width: 2, color: color),
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
        body: SingleChildScrollView(
          child: Column(
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
                    buildCheckBoxBtn(
                        checkCondition: currentScreen >= 0 ? true : false,
                        color: currentScreen >= 0 ? Colors.black : Colors.grey,),
                    buildUnderScoreContainer(
                      color:currentScreen >= 0 ? Colors.black : Colors.grey,
                    ),
                    buildCheckBoxBtn(
                      checkCondition: currentScreen >= 1 ? true : false,
                      color: currentScreen >= 1 ? Colors.transparent : Colors.grey,
                    ),
                    buildUnderScoreContainer(
                      color:currentScreen >= 1 ? Colors.black : Colors.grey,
                    ),
                    buildCheckBoxBtn(
                      checkCondition: currentScreen >= 2 ? true : false,
                      color: currentScreen >= 2 ? Colors.transparent : Colors.grey,
                    ),
                    buildUnderScoreContainer(
                      color:currentScreen >= 2 ? Colors.black : Colors.grey,
                    ),
                    buildCheckBoxBtn(
                      checkCondition: currentScreen >= 3 ? true : false,
                      color: currentScreen >= 3 ? Colors.transparent : Colors.grey,
                    ),
                    buildUnderScoreContainer(
                      color:currentScreen >= 3 ? Colors.black : Colors.grey,
                    ),
                    buildCheckBoxBtn(
                      checkCondition: currentScreen >= 4 ? true : false,
                      color: currentScreen >= 4 ? Colors.transparent : Colors.grey,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Container(
                  width: size.width,
                  height: size.height -181,
                  child: SingleChildScrollView(
                    child: Views(index: currentScreen,onPress: (){
                      setState(() {
                        if(currentScreen < signScreens.length -1){
                          currentScreen++;
                          print(currentScreen);
                        }else{
                          Navigator.pushNamed(context, Home.scr);
                          print(currentScreen);
                        }
                      });
                    },),
                  ) ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildUnderScoreContainer({required Color color}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      height: 4,
      width: 16,
    );
  }
}
// PageView.builder(
// itemCount: signScreens.length,
// onPageChanged: onChanged,
// scrollDirection:  horizontal,
// itemBuilder: (ctx, index) => SingleChildScrollView(
// child: Views(index: index,onPress: (){
// setState(() {
// index++;
// currentScreen++;
// horizontal = Axis.horizontal;
// onChanged(index);
// });
// },),
// ),
//
// ),
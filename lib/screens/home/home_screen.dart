import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String scr = "/Home";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    width: double.maxFinite,
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(51, 51, 51, 1)),
                          child: Icon(
                            Icons.list_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "My Profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.add_alert,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage("assets/images/doctor_banner.jpg"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Steve Ojo",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "Zone Liboretry",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "4.7 out of 5",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 3)),
                        child: Text(
                          "Status",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Under \n Review")
                    ],
                  ),
                ),
                Expanded(
                  child: buildRoundContainer(
                    text: "6",
                    labelText: "User Online",
                  ),
                ),
                Expanded(
                  child: buildRoundContainer(
                    text: "4",
                    labelText: "Total Users",
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: buildRoundContainer(
                    text: "105",
                    labelText: "Laboratory ID",
                  ),
                ),
                Expanded(
                  child: buildRoundContainer(
                    text: "May \n 2020",
                    labelText: "Member \nsince",
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 3)),
                        child: Icon(Icons.edit_location,color: Colors.black,size: 30,),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Location\nLagos, NA",textAlign: TextAlign.left,)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRoundContainer(
      {required String text, required String labelText}) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 3)),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(labelText)
      ],
    );
  }
}

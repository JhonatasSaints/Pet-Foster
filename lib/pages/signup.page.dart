import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(top:10, left:40,right:40),
        color: Colors.lightBlue,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200, height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/pawblue.png"),// add-user image
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Container(
                height:56, width:56,
                alignment: Alignment.center,
                decoration:Boxdecoration(
                  gradien: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.2, 1.0],
                    colors: [
                      Color(0x99FFFFFF),
                      Color(0XFFFFFFFF),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.lightBlue[700],
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60, left: 40, right: 40,
        ),
        color: Colors.lightBlue[700],
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200, height: 200, 
              child: Image.asset("assets/key.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Esqueceu sua Senha?",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700, color: Colors.white, 
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
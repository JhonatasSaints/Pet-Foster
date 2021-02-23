import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //button pop
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[350],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5, left: 40, right: 40),
        color: Colors.white38,
        child: ListView(
          children: <Widget>[
            Container(
              width: 100,
              height: 150,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/add-user.png"), // add-user image
                  fit: BoxFit.fitHeight,
                ),
              ),
              // child: Container(
              //   height: 56,
              //   width: 56,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         begin: Alignment.topLeft,
              //         end: Alignment.bottomRight,
              //         stops: [0.2, 1.0],
              //         colors: [
              //           Color(0x99FFFFFF),
              //           Color(0XFFFFFFFF),
              //         ],
              //       ),
              //       border: Border.all(
              //         width: 4.0,
              //         color: const Color(0XFFFFFFFF),
              //       ),
              //       borderRadius: BorderRadius.all(
              //         Radius.circular(56),
              //       ),
              //       ),
              //   child: SizedBox.expand(
              //     child: FlatButton(
              //       child: Icon(
              //         Icons.add,
              //         color: Colors.lightBlue,
              //       ),
              //       onPressed: () {},
              //     ),
              //   ),
              // ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              //text field
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome", //name user
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail", //email user
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha", //passord user
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              //buttons registre and cancel
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.4, 1],
                  colors: [
                    Color(0xFF64B5F6),
                    Color(0xFFE3F2FD),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  //button registre
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

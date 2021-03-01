import 'package:pet_foster/pages/reset_password_page.dart';
import 'package:pet_foster/pages/signup_page.dart';
import 'package:pet_foster/pages/menu/menu_page.dart';
import 'package:pet_foster/pages/home_screen_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Home'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.blue,
          onPressed: () {
            //Navegar da tela login p/
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaInicial()),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/pet-house.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center, // texto
              child: Text(
                'PET FOSTER',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  shadows: [
                    Shadow(
                      color: Colors.black38,
                      offset: Offset(3, 3),
                      blurRadius: 4,
                    ), //deixar com sombras
                  ],
                  letterSpacing: 10, //espacamento de letras
                  // wordSpacing: 10, // espacamento longo entre frases
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              //autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  borderSide: new BorderSide(color: Colors.blueGrey),
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha", //Password
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  borderSide: new BorderSide(color: Colors.blueGrey),
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 35,
            ),
            // button login onpressed
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [0.5, 10],
                  colors: [
                    Color(0xFF64B5F6),
                    Color(0xFFE3F2FD),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/pawblue.png"),
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                  //definir pagina
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => menu(),
                      ),
                    ),
                  },
                ),
              ),
            ),
            //button login with facebook | espacamento e botao facebook
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: 60,
            //   alignment: Alignment.centerLeft,
            //   decoration: BoxDecoration(
            //     color: Color(0xFF3C5A99),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(5),
            //     ),
            //   ),
            // child: SizedBox.expand(
            // child: FlatButton(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       Text(
            //         "Login com Facebook", //login with facebook
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white,
            //           fontSize: 20,
            //         ),
            //         textAlign: TextAlign.left,
            //       ),
            //       Container(
            //         child: SizedBox(
            //           child: Image.asset("assets/fb.png"),
            //           height: 28,
            //           width: 28,
            //         ),
            //       ),
            //     ],
            //   ),
            //   onPressed: () {},
            // ),
            // ),
            // ),
            // recover password | espacamneto e etxto recuperar senha
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Reset_Password_Page(),
                    ),
                  );
                },
              ),
            ),
            //sing up | Register
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup_Page(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

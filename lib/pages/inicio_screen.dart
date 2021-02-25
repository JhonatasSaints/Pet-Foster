import 'package:pet_foster/pages/login_page.dart';
import 'package:pet_foster/pages/signup_page.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  // @override
  Widget _buildHaveAccount() {
    //Have Account
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'já possui uma conta ?',
          style: TextStyle(fontSize: 20),
        ),
        FlatButton(
          child: Text(
            'Entrar',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login_Page(),
              ), //EntrarTela
            );
          },
        ),
      ],
    );
  }

  Widget _buildBtnRecord() {
    //Record
    return FlatButton(
      child: Text(
        'Registre-se',
        style: TextStyle(fontSize: 20),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.all(15),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      onPressed: () {
        //navigator screen signup_page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signup_Page()), //RegistroTela
        ); // Navigator
      },
    );
  }

  Widget _buildDesc() {
    //Description of app
    return Text(
      'Adote um Pet!',
    );
  }

  Widget _buildTitle() {
    //Title PetFoster
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Pet Foster',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildLogo() {
    //logoMarca
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage("assets/Animal.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        // color for background
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 90,
                  ),
                  //upload image
                  _buildLogo(),
                  SizedBox(
                    height: 80,
                  ),
                  //title
                  _buildTitle(),
                  SizedBox(
                    height: 5,
                  ),
                  //Description
                  _buildDesc(),
                ],
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              _buildBtnRecord(),
              _buildHaveAccount(),
            ]),
          ],
        ),
      ),
    );
  }
}

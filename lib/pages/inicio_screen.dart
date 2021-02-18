import 'package:pet_foster/pages/reset_password_page.dart';
// import 'package:pet_foster/pages/signup_page.dart';
import 'package:pet_foster/pages/login_page.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  // @override
  Widget _buildJaPossuiConta() {
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
              MaterialPageRoute(builder: (context) => EntrarTela()),
            );
          },
        ),
      ],
    );
  }
  
}

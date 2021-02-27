import 'package:pet_foster/pages/login_page.dart';
import 'package:pet_foster/pages/signup_page.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  _buildTitle(), //title | titulo
                  SizedBox(
                    height: 10,
                  ),
                  _buildLogo(), //logo
                  SizedBox(
                    height: 20,
                  ),
                  _buildDesc(), //Description | descricao
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

//Title PetFoster / Titulo
  Widget _buildTitle() {
    return Container(
      alignment: Alignment.center, // colocar imagem no lugar
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

//logo | Marca
  Widget _buildLogo() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage("assets/Animal.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

//Description of app / descricao do app "basica"
  Widget _buildDesc() {
    return Text(
      'Adote um Pet!Seja feliz Fazendo o bem ao Adotar e Amar um PetFoster.',
    );
  }

//Have Account | possui uma conta
  Widget _buildHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'já possui uma conta ?',
          style: TextStyle(fontSize: 20),
        ),
        // login page | EntrarTela
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
              ),
            );
          },
        ),
      ],
    );
  }

  //Record | registrar-se
  Widget _buildBtnRecord() {
    return FlatButton(
      child: Text(
        'Registre-se',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: EdgeInsets.all(15),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      onPressed: () {
        //navigator screen signup_page / navega pra tela entrar|login
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Signup_Page(), //RegistroTela
          ),
        );
      },
    );
  }
}

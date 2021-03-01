import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class pagina3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controladorNome = TextEditingController();
    final TextEditingController _controladorIdade = TextEditingController();
    final TextEditingController _controladorSexo = TextEditingController();

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Pets"),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.blue,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "nome", //Password
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
            height: 20,
          ),
          TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Idade", //Password
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
            height: 20,
          ),
          TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Cão/Gato", //Password
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
          // controller: _controladorNome,
          // ),
          // TextField(
          //   controller: _controladorIdade,
          // ),
          // TextField(
          //   controller: _controladorSexo,
          // ),
          RaisedButton(
            child: Text('Cadastrar'),
            color: Colors.blueAccent,
            onPressed: () {
              print("O botão foi pressionado");
            },
          ),
          RaisedButton(
            child: Text('Descartar'),
            color: Colors.blueAccent[20],
            onPressed: () {
              print("O botão foi pressionado");
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          print("O botão foi pressionado");
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Text("Cadastro  "),
          ],
        ),
        color: Colors.blueAccent,
      ),
    ));
  }
}

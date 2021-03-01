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
        title: Text("Cadastro do Pets"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _controladorNome,
          ),
          TextField(
            controller: _controladorIdade,
          ),
          TextField(
            controller: _controladorSexo,
          ),
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
          }),
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

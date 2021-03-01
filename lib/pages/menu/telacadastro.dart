import 'package:flutter/material.dart';

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
      ),
      body: Column(
        children: <Widget>[
          Title(
            color: Colors.blue[300],
            child: Text("nome"),
          ),
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
            color: Colors.blue,
            onPressed: () {
              print("O botão foi pressionado");
            },
          ),
          RaisedButton(
            child: Text('Descartar'),
            color: Colors.orange,
            onPressed: () {
              print("O botão foi pressionado");
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo),
          onPressed: () {
            print("O botão foi pressionado");
          }),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Text("Cadastro  "),
            IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  print("O IconButton foi pressionado");
                }),
            IconButton(
                icon: Icon(Icons.add_alert),
                onPressed: () {
                  print("O IconButton foi pressionado");
                }),
            IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () {
                  print("O IconButton foi pressionado");
                }),
            IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  print("O IconButton foi pressionado");
                }),
            IconButton(
                icon: Icon(Icons.data_usage_outlined),
                onPressed: () {
                  print("O IconButton foi pressionado");
                }),
          ],
        ),
        color: Colors.orangeAccent,
      ),
    ));
  }
}

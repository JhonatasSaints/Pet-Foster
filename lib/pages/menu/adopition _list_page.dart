import 'package:pet_foster/pages/menu/menu_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: lista()));

class lista extends StatefulWidget {
  @override
  listaState createState() => new listaState();
}

class listaState extends State<lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Lista Para Adoção (LPA)"),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.blue,
          onPressed: () {
            //Navegar da tela login p/
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => menu()),
            );
          },
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://www.anda.jor.br/wp-content/uploads/2016/10/31-4.jpg"),
                title: Text("Cão"),
                subtitle: Text("Idade: indefinido;  Status:Adotado"),
                trailing: IconButton(
                  icon: Icon(Icons.check_circle_outline),
                  onPressed: () => print("adicionado a cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://www.annaramalho.com.br/wp-content/uploads/2016/08/animais-adocaooo.jpeg"),
                title: Text(" Cão"),
                subtitle: Text(" Idade: 05  meses;  Status:Adocão"),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print("adicionado a cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://fofuxo.com.br/_upload/galleries/2013/04/08/scottish-fald-51636c26e7c25.jpg"),
                title: Text("Gato"),
                subtitle: Text("Idade: 05 meses;  Status:Adotado"),
                trailing: IconButton(
                  icon: Icon(Icons.check_circle_outline),
                  onPressed: () => print("adicionado a  cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://meusanimais.com.br/wp-content/uploads/2018/01/scotish-fold-3-461x308.jpg"),
                title: Text("gato"),
                subtitle: Text("Idade: Indefinido;  Status:Adotado"),
                trailing: IconButton(
                  icon: Icon(Icons.check_circle_outline),
                  onPressed: () => print("adicionado a  cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://blog.direcional.com.br/wp-content/uploads/2018/03/direcional-pets-em-apartamentos-dicas-para-quem-pretende-adotar-um-620x390.jpg"),
                title: Text("Gato"),
                subtitle: Text("Idade: 10 meses;  Status:Adocão"),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print("adicionado a  cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://i1.wp.com/www.animalepetshop.com.br/wp-content/uploads/2018/09/Poodle-Toy.jpeg?fit=1280%2C853"),
                title: Text("Cão"),
                subtitle: Text("Idade: 05 meses;  Status:Adocão"),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print("adicionado a  cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://www.petz.com.br/blog/wp-content/uploads/2020/05/poodle-tamanhos-pet.jpg"),
                title: Text("Cão"),
                subtitle: Text("Idade: 05 meses;  Status:Adocão"),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print("adicionado a  cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://tvsorocaba.com.br/wp-content/uploads/2020/05/campanha-de-adocao-canil-municipal-sorocaba.jpg"),
                title: Text(" Cão"),
                subtitle: Text(" Idade: 24 meses;  Status:Adocão"),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print("adicionado a  cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://statig0.akamaized.net/bancodeimagens/d8/xd/6k/d8xd6k64ugv2m7m9lcsscaud0.jpg"),
                title: Text("Cão"),
                subtitle: Text("Idade: 12 meses;  Status:Adocão"),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print("adicionado a cesta"),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.network(
                    "https://www.petlove.com.br/dicas/wp-content/uploads/2018/05/buldogue-dourado.jpg"),
                title: Text("Cão"),
                subtitle: Text("Idade: 24 meses;  Status:Adocão"),
                trailing: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => print(""),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:pet_foster/pages/menu/adopition _list_page.dart';
import 'package:pet_foster/pages/menu/already_registered_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  @override
  menuState createState() => new menuState();
}

class menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text("Menu"),
          ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center, // texto
            child: Text(
              'MENU',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.blue,
                shadows: [
                  Shadow(
                    color: Colors.black38,
                    offset: Offset(3, 4),
                    blurRadius: 4,
                  ), //deixar com sombras
                ],
                letterSpacing: 10, //espacamento de letras
                // wordSpacing: 10, // espacamento longo entre frases
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 250,
            child: Image.asset("assets/pet-amigo.png"),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: <Widget>[
              Container(
                //buttons registre and cancel
                height: 40,
                width: 300,
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
                    //button registre
                    child: Text(
                      "Pets Cadastrados",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // button cadastrar
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pagina3(), //
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                //buttons registre and cancel
                height: 40,
                width: 300,
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
                    //button registre
                    child: Text(
                      "Lista para Adoção",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // button cadastrar
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => lista()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 40,
                alignment: Alignment.center,
                child: FlatButton(
                  child: Text(
                    "Sair",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => Navigator.pop(context, false),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 20),
              //   //buttons registre and cancel
              //   height: 60,
              // width: 300,
              //   alignment: Alignment.centerLeft,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.topRight,
              //       end: Alignment.bottomRight,
              //       stops: [0.5, 10],
              //       colors: [
              //         Color(0xFF64B5F6),
              //         Color(0xFFE3F2FD),
              //       ],
              //     ),
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(15.0),
              //     ),
              //   ),
              // child: SizedBox.expand(
              //   child: FlatButton(
              //     //button registre
              //     child: Text(
              //       "so  sei que  nada  sei ",
              //       style: TextStyle(
              //         fontWeight: FontWeight.w800,
              //         color: Colors.white,
              //         fontSize: 20,
              //       ),
              //       textAlign: TextAlign.center,
              //     ),
              //     // button cadastrar
              //     onPressed: () {},
              //   ),
              // ),
              // ),
            ],
          ),
        ],
      ),
      drawer: new Drawer(
        // color: Colors.blue[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("araujo@gmail.com"),
              accountName: Text("tiago"),
              /*decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('assets/imagens.jpg'),
                  fit: BoxFit.cover,
                ),
              ),*/
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/46.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.pop(context);
                //navegar para  outra pagina
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.green,
              ),
              title: Text("Adoções"),
              onTap: () {
                Navigator.pop(context);
                //navegar para outra pagina
              },
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.green,
              ),
              title: Text("Historico"),
              onTap: () {
                Navigator.pop(context);
                //navegar para outra pagina
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: Colors.green,
              ),
              title: Text("Ajuda"),
              onTap: () {
                Navigator.pop(context);
                //navegar para outra pagina
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              title: Text("Configuração"),
              onTap: () {
                Navigator.pop(context);
                //navegar para outra pagina
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.green,
              ),
              title: Text("Sair"),
              onTap: () {
                Navigator.pop(context);
                //navegar para outra pagina
              },
            ),
          ],
        ),
      ),
    );
  }
}

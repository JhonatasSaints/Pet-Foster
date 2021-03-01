import 'package:flutter/material.dart';
import 'package:pet_foster/pages/menu/listapet.dart';
import 'package:pet_foster/pages/menu/telacadastro.dart';
import 'package:google_fonts/google_fonts.dart';

class menu extends StatefulWidget {
  @override
  menuState createState() => new menuState();
}

class menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PET FOSTER"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "MENU",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/download.png",
                    width: 70,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: <Widget>[
              Container(
                //buttons registre and cancel
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
                    //button registre
                    child: Text(
                      "Cadastrar pet",
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
                          MaterialPageRoute(builder: (context) => pagina3()));
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                //buttons registre and cancel
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
                    //button registre
                    child: Text(
                      "lista de adoção",
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
              Container(
                margin: EdgeInsets.only(top: 20),
                //buttons registre and cancel
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
                    //button registre
                    child: Text(
                      "so  sei que  nada  sei ",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // button cadastrar
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Container(
        color: Colors.blue[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("araujo@gmail.com"),
              accountName: Text("tiago"),
              currentAccountPicture: CircleAvatar(
                child: Text("TR"),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("minha conta"),
              onTap: () {
                Navigator.pop(context);
                //navegar para  outra pagina
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Cesta de adoção"),
              onTap: () {
                Navigator.pop(context);
                //navegar para outra pagina
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              title: Text("Sair"),
              onTap: () {
                Navigator.pop(context);
                //navegar para outra pagina
              },
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:pet_foster/inicio_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';

import 'package:pet_foster/pages/login_page.dart';
import 'package:pet_foster/pages/reset_password_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Foster',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login_Page(), //Login_Page/TelaInicial
    );
  }
}

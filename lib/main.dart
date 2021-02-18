import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:pet_foster/pages/inicio_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

// void main() => runApp(MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

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
      home: TelaInicial(), //LoginPage
    );
  }
}

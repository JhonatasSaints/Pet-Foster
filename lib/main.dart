import 'package:pet_foster/pages/login.page.dart';
// import 'package:pet_foster/pages/reset-password.page.dart';
// import 'package:pet_foster/pages/signup.page.dart';
// import 'package:pet_foster/pages/user.list.dart'; //erro
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Foster',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
    );
  }
}

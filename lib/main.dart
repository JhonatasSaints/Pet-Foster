import 'package:pet_foster/pages/login.page.dart';
import 'package:pet_foster/pages/user.list.dart'; //erro
import 'package:flutter/material.dart';

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

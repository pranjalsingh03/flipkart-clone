import "package:flutter/material.dart";
import "package:project/pages/home_page.dart";
import "package:project/pages/login_page.dart";


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return  MaterialApp(
      home: LoginPage(),
    );
  }
}
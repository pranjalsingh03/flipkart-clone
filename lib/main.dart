import "package:flutter/material.dart";
import "package:project/pages/gridview.dart";
import "package:project/pages/home_page.dart";


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      // theme: new ThemeData(
      //   primaryColor: Colors.green[400],
      // ),
      home: Magan(),
    );
  }
}
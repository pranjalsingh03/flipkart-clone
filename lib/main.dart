import "package:flutter/material.dart";
import "package:project/pages/gridview.dart";
import "package:project/pages/home_page.dart";


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
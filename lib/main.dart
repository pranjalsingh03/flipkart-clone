import "package:flutter/material.dart";
import "package:project/datamodel/survey.dart";
import "package:project/pages/add_form.dart";
import "package:project/pages/home_page.dart";
import "package:project/pages/login_page.dart";
import "package:project/pages/manager_form.dart";
import "package:project/pages/managers_page.dart";
import "package:project/pages/stores_page.dart";
import "package:project/pages/survey_form.dart";
import "package:project/pages/surveys_page.dart";


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new MaterialApp(
      // theme: new ThemeData(
      //   primaryColor: Colors.green[400],
      // ),
      home: new HomePage(),
    );
  }
}
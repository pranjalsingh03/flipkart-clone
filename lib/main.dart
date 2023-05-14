import 'package:flutter/material.dart';
import 'package:project/pages/home.dart';


// @pragma(
//     'vm:entry-point') // Mandatory if the App is obfuscated or using Flutter 3.1+
// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) {
//     //simpleTask will be emitted here.
//     print("Hello world");
//     return Future.value(true);
//   });
// }

void main() {
  // Workmanager().initialize(
  //     callbackDispatcher, // The top level function, aka callbackDispatcher
  //     isInDebugMode:
  //         true // If enabled it will post a notification whenever the task is running. Handy for debugging tasks
  //     );
  // Workmanager().registerOneOffTask("task-identifier", "simpleTask");
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: home()));
}
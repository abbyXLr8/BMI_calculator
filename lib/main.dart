import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/create.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: CreateApp(), //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

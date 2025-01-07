import 'package:flutter/material.dart';

class WelcomeApp extends StatelessWidget {
  final String name;
  WelcomeApp({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Welcome, $name!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

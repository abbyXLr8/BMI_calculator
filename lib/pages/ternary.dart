import 'package:flutter/material.dart';

class MyExApp extends StatefulWidget {
  const MyExApp({super.key});

  @override
  State<MyExApp> createState() => _MyExAppState();
}

class _MyExAppState extends State<MyExApp> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isClicked) ? Colors.black : Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
              print('DEBUG: isClicked: $isClicked');
            });
          },
          child: Text(
            'Toggle light/dark',
            style: TextStyle(color: (isClicked) ? Colors.black : Colors.green),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/pages/welcome.dart';

class CreateApp extends StatefulWidget {
  @override
  State<CreateApp> createState() => _CreateAppState();
}

class _CreateAppState extends State<CreateApp> {
  @override
  final TextEditingController _controller = TextEditingController();

  void _navigateToWelcomPage(BuildContext context) {
    final text = _controller.text;
    if (text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeApp(name: text),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.greenAccent,
                    Colors.lightBlueAccent,
                  ],
                ),
              ),
              child: Column(
                children: [
                  AppBar(
                    title: Text('BMI App'),
                    backgroundColor: Colors.transparent,
                  ),
                  //Spacer(),
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/robot.png'),
                    )),
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 40, width: 10),
                      Text(
                        'Whats your name?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                            labelText: 'Enter your name:',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 100),
                      ElevatedButton(
                          onPressed: () => _navigateToWelcomPage(context),
                          child: Text('Next ->'))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
  void _navigateToWelcomPage(BuildContext context) {}

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
                    //title: Text('BMI App'),
                    backgroundColor: Colors.transparent,
                  ),
                  //Spacer(),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/robot.png'),
                    )),
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            WhiteContainer(controller: _controller)
          ],
        ),
      ),
    );
  }
}

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 70, width: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Whats your name?',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                    labelText: 'Enter your name:',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeApp(
                            name: _controller.text,
                          ),
                        ));
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 50,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Center(
                      child: Text(
                        'Calculate your BMI',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

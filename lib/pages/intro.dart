import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/pages/welcome.dart';

class CreateApp extends StatefulWidget {
  @override
  State<CreateApp> createState() => _CreateAppState();
}

class _CreateAppState extends State<CreateApp> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //height: 500,
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
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
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
              SizedBox(
                height: 20,
              ),
              WhiteContainer()
            ],
          ),
        ),
      ),
    );
  }
}

class WhiteContainer extends StatefulWidget {
  const WhiteContainer({
    super.key,
  });
  
  @override
  State<WhiteContainer> createState() => _WhiteContainerState();
}

class _WhiteContainerState extends State<WhiteContainer> {
  final TextEditingController _namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.592,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
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
              SizedBox(height: 20),
              TextField(
                controller: _namecontroller,
                decoration: InputDecoration(
                    labelText: 'Enter your name:', border: OutlineInputBorder()),
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
                            name: _namecontroller.text,
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
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

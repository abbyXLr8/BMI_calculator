import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/result_page.dart';
import 'package:flutter_application_1/widgets/custom_text_field_widget.dart';

class WelcomeApp extends StatelessWidget {
  final String name;
  const WelcomeApp({super.key, required this.name});

  @override
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    AppBar(
                      backgroundColor: Colors.transparent,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hi, $name!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            WhiteContainer(),
          ],
        ),
      ),
    );
  }
}

class WhiteContainer extends StatefulWidget {
  const WhiteContainer({super.key});

  @override
  _WhiteContainerState createState() => _WhiteContainerState();
}

class _WhiteContainerState extends State<WhiteContainer> {
  bool _isFirstButtonSelected = true;
  final weightvalues = <String>['Kgs', 'Lbs'];

  TextEditingController ageController = TextEditingController(); 
  TextEditingController heightController = TextEditingController(); 
  TextEditingController weightController = TextEditingController(); 

  void _selectedFirstButton() {
    setState(() {
      _isFirstButtonSelected = true;
    });
  }

  void _selectSecondButton() {
    setState(() {
      _isFirstButtonSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/images/male.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/images/female.png'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 208, 240, 255),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          _selectedFirstButton();
                        },
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 40,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: _isFirstButtonSelected
                                ? Colors.lightBlueAccent
                                : Color.fromARGB(255, 208, 240, 255),
                          ),
                          child: Center(
                            child: Text(
                              'Male',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          _selectSecondButton();
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 40,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: !_isFirstButtonSelected
                                ? Colors.lightBlueAccent
                                : Color.fromARGB(255, 208, 240, 255),
                          ),
                          child: Center(
                            child: Text(
                              'Female',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          //color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Age:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomTextField(controller: ageController),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'Weight:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomTextField(controller: weightController),
                    // DropdownButton(
                    //     items: List.from(weightvalues), onChanged: null),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'Height:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomTextField(controller: heightController),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    int age = int.parse(ageController.text);
                    double weight = double.parse(weightController.text);
                    double height= double.parse(heightController.text);
                    double bmiValue = (weight/(height*height))*10000;  //square(5cm*100)=>meter square
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(bmi_value: bmiValue, age: age),
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
                    //color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bmi_details_row_widget.dart';
import 'package:flutter_application_1/widgets/classification_widgets.dart';
import 'package:flutter_application_1/widgets/pie_chart_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.bmi_value, required this.age});

  final double bmi_value;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green,
                    Colors.greenAccent,
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu_outlined,
                          color: Colors.black87,
                        ),
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Your BMI Result',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
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
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        PieChartWidget(
                          bmi_value: bmi_value,
                        ),
                        SizedBox(height: 40, width: 10),
                        Text(
                          'You Have Normal body Weight !',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue[200],
                              borderRadius: BorderRadius.circular(26)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 26, vertical: 16),
                          child: BmiDetailsRowWidget(age: age),
                        ),
                        SizedBox(height: 20),
                        ClassificationColumnData()
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({
    super.key, required this.bmi_value,
  });

  final double bmi_value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PieChart(
        initialAngleInDegree: -90,
        ringStrokeWidth: 14,
        dataMap: {'BMI': bmi_value}, //progress bar
        chartType: ChartType.ring,
        baseChartColor: Colors.grey[200]!,
        colorList: (bmi_value<25)?[Colors.green]:[Colors.red],
        chartValuesOptions: ChartValuesOptions(
          showChartValues: false,
          showChartValuesOutside: false,
          showChartValueBackground: false,
        ),
        totalValue: 50,
        centerText: bmi_value.toStringAsFixed(2),
        centerTextStyle: TextStyle(
          fontSize: 26,
          color: Colors.black
        ),
        legendOptions: LegendOptions(
          showLegends: false,
        ),
      ),
    );
  }
}
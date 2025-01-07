import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PieChart(
        initialAngleInDegree: -90,
        ringStrokeWidth: 14,
        dataMap: {'BMI': 18},
        chartType: ChartType.ring,
        baseChartColor: Colors.grey[200]!,
        colorList: [Colors.green],
        chartValuesOptions: ChartValuesOptions(
          showChartValues: false,
          showChartValuesOutside: false,
          showChartValueBackground: false,
        ),
        totalValue: 40,
        centerText: '19.9',
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

import 'package:flutter/material.dart';

class ClassificationColumnData extends StatelessWidget {
  const ClassificationColumnData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        ClassificationRowWidget(
          label: 'Very severely underweight',
          range: '< 16',
          color: Colors.blue[600]!,
        ),
        ClassificationRowWidget(
          label: 'Severely underweight',
          range: '16.0-16.9',
          color: Colors.blue[400]!,
        ),
        ClassificationRowWidget(
          label: 'Underweight',
          range: '17.0-18.4',
          color: Colors.blue[200]!,
        ),
        ClassificationRowWidget(
          label: 'Normal',
          range: '18.5-24.9',
          color: Colors.green[300]!,
        ),
        ClassificationRowWidget(
          label: 'Overweight',
          range: '25.0-29.9',
          color: Colors.yellow[600]!,
        ),
        ClassificationRowWidget(
          label: 'Obese class I',
          range: '30.0-34.9',
          color: Colors.orange[400]!,
        ),
        ClassificationRowWidget(
          label: 'Obese class II',
          range: '35.0-39.9',
          color: Colors.deepOrange[400]!,
        ),
        ClassificationRowWidget(
          label: 'Obese class III',
          range: '> 39.9',
          color: Colors.red[600]!,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Normal weight range',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 16,
                ),
              ),
              Text(
                '50.4-67.8 Kg',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ClassificationRowWidget extends StatelessWidget {
  const ClassificationRowWidget(
      {super.key,
      required this.label,
      required this.range,
      required this.color});
  final String label;
  final String range;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  range,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

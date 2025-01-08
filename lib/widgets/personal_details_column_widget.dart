import 'package:flutter/material.dart';

class PersonalDetailColumn extends StatelessWidget {
  const PersonalDetailColumn({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
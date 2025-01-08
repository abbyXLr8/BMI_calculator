import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/personal_details_column_widget.dart';

class BmiDetailsRowWidget extends StatelessWidget {
  const BmiDetailsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PersonalDetailColumn(title: 'Age',value: '22',),
        const VerticalDivider(
          color: Colors.grey,
        ),
        PersonalDetailColumn(title: 'Weight',value: '54Kg',),
        const VerticalDivider(
          color: Colors.grey,
        ),
        PersonalDetailColumn(title: 'Height',value: '165Cm',),
      ],
    );
  }
}
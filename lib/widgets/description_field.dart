import 'package:flutter/material.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({required this.name,required this.leftValue, required this.rightValue, required this.icon, super.key});
  final String name;
  final double leftValue;
  final double rightValue;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 5),
        Padding(
          padding: EdgeInsets.only(left: leftValue, right: rightValue),
          child: Icon(icon),
        ),
        Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

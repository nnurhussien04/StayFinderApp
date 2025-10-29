import 'package:flutter/material.dart';

class AmentiesWidget extends StatelessWidget {
  const AmentiesWidget({
    super.key,
     required this.text,
     required this.text2,
     required this.width
  });

  final String text;
  final String text2;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Icon(Icons.check,color: Colors.lightBlue,),
        Text(text),
        SizedBox(width: width),
        Icon(Icons.check,color: Colors.lightBlue,),
        Text(text2)
      ],
    );
  }
}
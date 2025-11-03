import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    super.key,
    required this.title,
    required this.subtitle
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      //height: MediaQuery.of(context).size.height * 0.4,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey.shade700
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



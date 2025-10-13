import 'package:flutter/material.dart';

class InputFields extends StatefulWidget {
  const InputFields({
    super.key,
    required this.controller,
    required this.hint
  });

  final String hint;

  final TextEditingController controller;

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  bool colorChange = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 1.0,
          color: colorChange ? Colors.blue : Colors.black
          ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: widget.controller,
        onTap: (){
          setState(() {
            colorChange = !colorChange;
          });
        },
        onTapOutside: (value){
          setState(() {
            colorChange = !colorChange;
          });
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20),
          hintText: widget.hint,
        ),
      ),
    );
  }
}
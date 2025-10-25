import 'package:flutter/material.dart';

class DatePickerButton extends StatefulWidget {
  const DatePickerButton({
    super.key,
    required this.datePicker
  });

  final void Function() datePicker;

  @override
  State<DatePickerButton> createState() => _DatePickerButtonState();
}

class _DatePickerButtonState extends State<DatePickerButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: widget.datePicker,
        icon: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.calendar_month,
            size: 17,
            ),
        ),
        label: Text(
          'Pick a date',
           style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.normal
           ),
          ),
        style: OutlinedButton.styleFrom(
          alignment: Alignment.bottomLeft,
          iconAlignment: IconAlignment.start,
          padding: EdgeInsets.all(15),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.grey.shade700,
          side: BorderSide(
            color: Colors.black12
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          
        ),
      ),
    );
  }
}

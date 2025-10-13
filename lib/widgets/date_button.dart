import 'package:flutter/material.dart';

class DatePickerButton extends StatelessWidget {
  const DatePickerButton({super.key});

  Future<void> datePicker(BuildContext context) async {
    DateTime? inputDate = await showDatePicker(
      context: context,
      firstDate: DateTime.parse('13/10/24'),
      lastDate: DateTime.parse('13/10/25'),
      initialDate: DateTime.parse('13/10/25'),
    );
  }

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
        onPressed: () {
          datePicker(context);
        },
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
          foregroundColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

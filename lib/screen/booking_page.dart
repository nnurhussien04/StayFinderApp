import 'package:flutter/material.dart';
import 'package:stayfinderapp/widgets/hotelbar.dart';

class BookingPage extends StatelessWidget {
  BookingPage({super.key});
  Widget? content;




  @override
  Widget build(BuildContext context) {

    
    content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.calendar_today_outlined,size: 50),
          Text('No Booking Found, Start Booking',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,)
          ],
        ),
      );

    return Scaffold(
      appBar: Hotelbar(switchedPage: CurrentPage.booking),
      body: content
    );

  }
}
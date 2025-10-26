import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stayfinderapp/hotel_app.dart';
import 'package:stayfinderapp/screen/booking_page.dart';
import 'package:stayfinderapp/screen/homepage.dart';

enum CurrentPage{
  search,
  home,
  booking
  
}

class Hotelbar extends StatefulWidget implements PreferredSizeWidget{
  Hotelbar({super.key,required this.switchedPage});

  final switchedPage;

  
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  State<Hotelbar> createState() => _HotelbarState();
  

}

class _HotelbarState extends State<Hotelbar> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          Icon(
            Icons.apartment,
            color: Colors.lightBlue,
            ),
          SizedBox(width: 10),
          Text(
            'StayFinder',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => HotelApp()));
          },
          style: TextButton.styleFrom(
            backgroundColor: widget.switchedPage != CurrentPage.home ?  Colors.white: Colors.lightBlue,
            //padding: EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          child: Text(
            'Search',
            style: TextStyle(
              color: widget.switchedPage != CurrentPage.home ? Colors.black : Colors.white
            ),
          )
        ),
        SizedBox(width: 5),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton.icon(
              onPressed: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => BookingPage()));
              },
              icon: Icon(Icons.calendar_today_outlined),
              label: Text(
                'My Booking'), 
              style: TextButton.styleFrom(
                backgroundColor: widget.switchedPage != CurrentPage.booking ? Colors.white : Colors.lightBlue,
                foregroundColor: widget.switchedPage != CurrentPage.booking ? Colors.black : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              )
            ),
          ),
        )
      ]
    );
  }

}
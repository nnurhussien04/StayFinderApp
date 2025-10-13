import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hotelbar extends StatefulWidget implements PreferredSizeWidget{
  Hotelbar({super.key});

  
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
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            //padding: EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          child: Text(
            'Search',
            style: TextStyle(
              color: Colors.white
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
              onPressed: (){},
              icon: Icon(Icons.calendar_today_outlined),
              label: Text(
                'My Booking'), 
              style: TextButton.styleFrom(
                backgroundColor: changeColor ? Colors.orange:Colors.white,
                foregroundColor: Colors.black,
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
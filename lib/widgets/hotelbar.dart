import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hotelbar extends StatefulWidget {
  const Hotelbar({super.key});

  @override
  State<Hotelbar> createState() => _HotelbarState();
}

class _HotelbarState extends State<Hotelbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.apartment),
      title: Text(
        'StayFinder'
        style: GoogleFonts.u,
        ),

    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/hotel_app.dart';
import 'package:stayfinderapp/model/hotel.dart';
import 'package:stayfinderapp/provider/booking.dart';
import 'package:stayfinderapp/provider/current_hotel.dart';
import 'package:stayfinderapp/provider/search_result.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Hotel()),
        ChangeNotifierProvider(create: (_) => CurrentHotel()),
        ChangeNotifierProvider(create: (_) => SearchResult()),
        ChangeNotifierProvider(create: (_) => BookingHotel())
      ], 
      child: HotelApp()
    )
  );
}

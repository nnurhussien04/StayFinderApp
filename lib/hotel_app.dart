import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/model/hotel.dart';
import 'package:stayfinderapp/provider/current_hotel.dart';
import 'package:stayfinderapp/screen/homepage.dart';
import 'package:stayfinderapp/widgets/hotelbar.dart';

class HotelApp extends StatefulWidget {
  const HotelApp({super.key});

  @override
  State<HotelApp> createState() => _HotelAppState();
}

class _HotelAppState extends State<HotelApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => Hotel()),
        ChangeNotifierProvider(create: (ctx) => CurrentHotel())
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: Hotelbar(switchedPage: CurrentPage.home),
          body: Homepage()
         )
      ),
    );
  }
}



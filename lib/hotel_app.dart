import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/model/hotel.dart';
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
    return ChangeNotifierProvider(
      create: (context) => Hotel(null,null,null,null,null),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: Hotelbar(),
          body: Homepage()
         )
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/model/hotel.dart';
import 'package:stayfinderapp/provider/current_hotel.dart';
import 'package:stayfinderapp/provider/search_result.dart';
import 'package:stayfinderapp/screen/homepage.dart';
import 'package:stayfinderapp/screen/search_page.dart';
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
        ChangeNotifierProvider(create: (ctx) => CurrentHotel()),
        ChangeNotifierProvider(create: (ctx) => SearchResult())
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue
          )
        ),
        home: Scaffold(
          appBar: Hotelbar(switchedPage: CurrentPage.home),
          body: Homepage()
        )
      ),
    );
  }
}



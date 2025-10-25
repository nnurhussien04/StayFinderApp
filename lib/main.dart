import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/hotel_app.dart';
import 'package:stayfinderapp/model/hotel.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (ctx) => Hotel(),
    child: HotelApp()
    )
  );
}

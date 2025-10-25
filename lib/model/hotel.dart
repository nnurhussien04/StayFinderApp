import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/screen/booking_page.dart';


class Hotel extends ChangeNotifier{

  Hotel({this.name,this.image,this.city,this.checkIn,this.checkOut}):booked = false;

  String? name;
  String? city;
  DateTime? checkIn;
  DateTime? checkOut;
  String? image;
  bool? booked;


}

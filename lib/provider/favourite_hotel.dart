import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stayfinderapp/model/hotel.dart';

class BookingHotel extends ChangeNotifier{
  BookingHotel();

  List<Hotel> booking = [];

  void addHotel(Hotel hotel){
    booking.add(hotel);
    notifyListeners();
  }

  void removeHotel(Hotel hotel){
    booking.remove(hotel);
    notifyListeners();
  }

}
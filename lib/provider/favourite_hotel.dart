import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stayfinderapp/model/hotel.dart';

class FavouriteHotel extends ChangeNotifier{
  FavouriteHotel();

  List<Hotel> favourites = [];

  void addHotel(Hotel hotel){
    hotel.booked = true;
    favourites.add(hotel);
    notifyListeners();
  }

  void removeHotel(Hotel hotel){
    hotel.booked = false;
    favourites.remove(hotel);
    notifyListeners();
  }

}
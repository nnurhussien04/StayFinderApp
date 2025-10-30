import 'package:flutter/material.dart';
import 'package:stayfinderapp/model/hotel.dart';

class CurrentHotel extends ChangeNotifier{
  CurrentHotel();

  Hotel? currentHotel;

  void setHotel(Hotel hotel){
    currentHotel = hotel;
    notifyListeners();
  }

  

}
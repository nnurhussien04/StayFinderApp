import 'package:flutter/material.dart';
import 'package:stayfinderapp/model/hotel.dart';

class CurrentHotel extends ChangeNotifier{
  
  Hotel? currentHotel;

  void setHotel(Hotel hotel){
    currentHotel = hotel;
    notifyListeners();
  }

  

}
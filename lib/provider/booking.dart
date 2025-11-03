import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/model/hotel.dart';
import 'package:stayfinderapp/provider/search_result.dart';

class BookingHotel extends ChangeNotifier{
  BookingHotel();
  

  List<Map<String,dynamic>> booking = [];

  void addHotel(Hotel hotel,double price,BuildContext context){
    SearchResult searchProvider = Provider.of<SearchResult>(context,listen: false);
    booking.add({
      'Name':hotel.name,
      'City':hotel.city,
      'Image':hotel.image,
      'Price':price,
      'Check-In':searchProvider.checkInDate,
      'Check-Out':searchProvider.checkOutDate
    });
    notifyListeners();
  }

  void removeHotel(Hotel hotel){
    booking.remove(hotel);
    notifyListeners();
  }

}
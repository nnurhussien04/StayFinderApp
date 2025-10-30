import 'package:flutter/material.dart';

class SearchResult extends ChangeNotifier{
  SearchResult();

  String? location;
  int? guests;
  DateTime? checkInDate;
  DateTime? checkOutDate;
  int noOfNights = 0;
  

  void updateSearchResult({String? userLocation, int? noOfGuests, DateTime? userCheckInDate, DateTime? userCheckOutDate}){
    location = userLocation;
    guests = noOfGuests;
    checkInDate = userCheckInDate;
    checkOutDate = userCheckOutDate;
    ChangeNotifier();
  }

  void calculateNoOfNights(){
    if(checkOutDate == null || checkInDate == null){
      return;
    }
    if(!checkOutDate!.isAfter(checkInDate!)){
      return;
    }
    noOfNights = checkOutDate!.difference(checkInDate!).inDays;
    ChangeNotifier();
  }





}
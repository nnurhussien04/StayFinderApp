import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/provider/current_hotel.dart';
import 'package:stayfinderapp/provider/search_result.dart';
import 'package:stayfinderapp/widgets/hotelbar.dart';
import 'package:stayfinderapp/data/hotels.dart';
import 'package:stayfinderapp/widgets/search_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    SearchResult searchResult = Provider.of<SearchResult>(context);
    // print(searchResult.location);
    // print(searchResult.guests);
    // print(searchResult.checkInDate);
    // print(searchResult.checkOutDate);
    final filteredHotels = avaliableHotels.where((hotel) => hotel.city!.toUpperCase() == searchResult.location!.toUpperCase()).toList();
    return Scaffold(
      appBar: Hotelbar(switchedPage: CurrentPage.search),
      body: ListView.builder(
        itemCount: filteredHotels.length,
        itemBuilder: (ctx,index) {
          return SearchCard(hotel: filteredHotels[index]);
        }
      ),
    );
  }
}
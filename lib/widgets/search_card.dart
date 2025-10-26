import 'package:flutter/material.dart';
import 'package:stayfinderapp/model/hotel.dart';

class SearchCard extends StatelessWidget {
  SearchCard({super.key,required this.hotel});
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            fit: BoxFit.fill,
            width: double.infinity,
            height: 150,
            hotel.image!
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20,20,20,20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,
                  hotel.name!,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.black45,size: 15,),
                    Text(hotel.city!,style: TextStyle(color: Colors.black45))
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  spacing: 5,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[50]
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        spacing: 2,
                        children: [
                          Icon(Icons.wifi,size: 14),
                          Text('Wifi',style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[50]
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        spacing: 2,
                        children: [
                          Icon(Icons.coffee_sharp,size: 14),
                          Text('Coffee',style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[50]
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        spacing: 2,
                        children: [
                          Icon(Icons.local_parking,size: 14),
                          Text('Parking',style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: (){}, 
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity,40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('View Details')
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
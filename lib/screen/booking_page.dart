import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/provider/booking.dart';
import 'package:stayfinderapp/provider/search_result.dart';
import 'package:stayfinderapp/widgets/hotelbar.dart';

class BookingPage extends StatelessWidget {
  BookingPage({super.key});
  Widget? content;




  @override
  Widget build(BuildContext context) {
    
    content = Center(
      child: Column(
        children: [
          Icon(Icons.calendar_today_outlined,size: 50),
          Text('No Booking Found, Start Booking',style: TextStyle(fontSize: 30),textAlign: TextAlign.center,)
          ],
        ),
      );

    return Scaffold(
      appBar: Hotelbar(switchedPage: CurrentPage.booking),
      body: Consumer<BookingHotel>(
        builder: (context,page,_){
          SearchResult result = Provider.of<SearchResult>(context);
          //print(page.booking);
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 14.0),
                  child: Text('My Bookings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,letterSpacing: -2)),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        ...page.booking.map(
                          (x) => Container(
                            margin: EdgeInsets.all(8),
                            //padding: EdgeInsets.all(8),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                width: 1.0,
                                color: Colors.black26 
                              ),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                  height: 200,
                                  width: double.infinity,
                                  x['Image']!,
                                  fit: BoxFit.fill,
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20,20,20,30),
                                  child: Column(
                                    spacing: 20,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(x['Name']!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: -1,)),
                                          Row(children: [Icon(Icons.location_on_outlined,size: 14,color: Colors.black45,), Text(x['City']!,style: TextStyle(color: Colors.black45))])
                                        ],
                                      ),
                                      Container(
                                        height: 40,
                                        width: 600,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 20,
                                              child: Text('Check-In')
                                            ),
                                            Positioned(
                                              top: 10,
                                              child: Icon(Icons.calendar_today_outlined,size: 14)
                                            ),
                                            Positioned(
                                              top: 20,
                                              left: 20,
                                              child: Text( DateFormat('dd MMMM yyyy').format(x['Check-In']!),style: TextStyle(fontWeight: FontWeight.bold),)
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 600,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 20,
                                              child: Text('Check-Out')
                                            ),
                                            Positioned(
                                              top: 10,
                                              child: Icon(Icons.access_time_outlined,size: 14)
                                            ),
                                            Positioned(
                                              top: 20,
                                              left: 20,
                                              child: Text(DateFormat('dd MMMM yyyy').format(x['Check-Out']!),style: TextStyle(fontWeight: FontWeight.bold),)
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Text('Total Paid'),
                                          Spacer(),
                                          Text('£${x['Price']!}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        })
    );

  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/model/hotel.dart';
import 'package:stayfinderapp/provider/current_hotel.dart';
import 'package:stayfinderapp/widgets/amenties_widget.dart';
import 'package:stayfinderapp/widgets/hotelbar.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Hotelbar(switchedPage: CurrentPage.info),
      body: Consumer<CurrentHotel>(
        builder: (ctx,hotelProvider,_){
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.network(
                        hotelProvider.currentHotel!.image!
                      ) ,
                    ),
                    SizedBox(height: 25),
                    Text(hotelProvider.currentHotel!.name!,style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,color: Colors.black38,),
                        Text(hotelProvider.currentHotel!.city!,style:TextStyle(fontSize: 14,color: Colors.black38)),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black26
                        )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amenities',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22)),
                          SizedBox(height: 15),
                          AmentiesWidget(
                            text: 'Free Wifi',
                            text2: 'Breakfast',
                            width: 100,
                          ),
                          SizedBox(height: 10),
                          AmentiesWidget(
                            text: 'Parking', 
                            text2: 'Pool',
                            width: 110
                          ),
                          SizedBox(height: 10,),
                          AmentiesWidget(
                            text: 'Gym', 
                            text2: 'Room Service',
                            width: 130,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black26,
                          width: 1.0
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('£' + hotelProvider.currentHotel!.price!.toStringAsFixed(0),style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
                          Text('per night',style: TextStyle(color: Colors.black26)),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('3 nights',style: TextStyle(color: Colors.black54)),
                              Spacer(),
                              Text('£360',style: TextStyle(color: Colors.black54))
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Service Fee',style: TextStyle(color: Colors.black54)),
                              Spacer(),
                              Text('£25',style: TextStyle(color: Colors.black54))
                            ]
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text('Total',style: TextStyle(fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text('£500',style: TextStyle(fontWeight: FontWeight.bold))
                            ]
                          ),
                          SizedBox(height: 10),
                          TextButton(
                          onPressed: () {
                              showDialog(
                                context: context,
                                builder: (ctx){
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    titlePadding: EdgeInsets.fromLTRB(24,10,15,10),
                                    title: 
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Confirm Your Booking',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                                  Text('You\'re about to book a stay at ${hotelProvider.currentHotel!.name}',style: TextStyle(fontSize: 15,color: Colors.black87),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            IconButton(onPressed: () => Navigator.pop(ctx), icon: Icon(Icons.close),alignment: Alignment.topRight,iconSize: 15,padding: EdgeInsets.zero),
                                          ],
                                        ),
                                    insetPadding: EdgeInsets.zero,
                                    content: Container(
                                      width: 330,
                                      height: 100,
                                      child: Column(
                                        children: [
                                          DialogRow(
                                            detail: 'Hotel',
                                            data: hotelProvider.currentHotel!.name!
                                          ),
                                          SizedBox(height: 15),
                                          DialogRow(
                                            detail: 'Duration', 
                                            data: '3 nights'
                                          ),
                                          SizedBox(height: 15),
                                          DialogRow(
                                            detail: 'Total Price',
                                            data: '£500',
                                            sizeFont: 18,
                                          )
                                          //Text('Testing Dialog'),
                                        ],
                                      )),
                                    actions: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(ctx),
                                              style: TextButton.styleFrom(
                                                //padding: EdgeInsets.all(15),
                                                //fixedSize: Size(140, 35),
                                                foregroundColor: Colors.black,
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    color: Colors.black26,
                                                    width: 1.0
                                                  ),
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ), 
                                              child: Text('Cancel')                                              
                                            ),
                                            SizedBox(width: 5),
                                            TextButton(
                                              onPressed: (){},
                                              style: TextButton.styleFrom(
                                                //padding: EdgeInsets.all(15),
                                                fixedSize: Size(145, 35),
                                                backgroundColor: Colors.lightBlue,
                                                foregroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                              ), 
                                              child: Text('Confirm Booking',style: TextStyle(fontWeight: FontWeight.bold),)                                      
                                            )
                                          ]
                                        )
                                    ],
                                  );
                                });
                          },
                          style: TextButton.styleFrom(
                            minimumSize: Size(double.infinity,10),
                            padding: EdgeInsets.all(15),
                            backgroundColor: Colors.lightBlue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text('Book Now')
                        )
                        ],
                      ),
                    ),
                    SizedBox(height: 15)
                  ],
                ),
              ),
            ),
          );
      }
      ),
    );
  }
}

class DialogRow extends StatelessWidget {
  DialogRow({
    super.key,
    required this.detail,
    required this.data,
    this.sizeFont = 14
  });

  String detail;
  String data;
  double sizeFont;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(detail),
        Spacer(),
        Text(data,style: TextStyle(fontWeight: FontWeight.bold,fontSize: sizeFont))
      ],
    );
  }
}
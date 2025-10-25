import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stayfinderapp/model/hotel.dart';
import 'package:stayfinderapp/screen/booking_page.dart';
import 'package:stayfinderapp/widgets/date_button.dart';
import 'package:stayfinderapp/widgets/description_field.dart';
import 'package:stayfinderapp/widgets/input_field.dart';
import 'package:stayfinderapp/widgets/message_container.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
  }

  var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);

  Future<void> _datePicker() async {
    DateTime? inputDate = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year-1,DateTime.now().month, DateTime.now().day),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
      builder: (ctx,child){
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: kColorScheme,
            datePickerTheme: DatePickerThemeData(
              backgroundColor: Colors.white
            )
          ),
          child: child!
        );
      }
    );
  }


  Future<void> _datePicker2() async {
    DateTime? inputDate = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year-1,DateTime.now().month, DateTime.now().day),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
      builder: (ctx,child){
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: kColorScheme,
            datePickerTheme: DatePickerThemeData(
              backgroundColor: Colors.white
            )
          ),
          child: child!
        );
      }
      
    );
  }



  @override
  Widget build(BuildContext context) {
    Hotel hotelProvider = Provider.of<Hotel>(context);
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'Find Your Perfect Stay',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Discover amazing hotels worldwide at the best prices',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                //height: MediaQuery.of(context).size.height * 0.4,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black12),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DescriptionField(
                      name: 'Location',
                      leftValue: 8.0,
                      rightValue: 1.0,
                      icon: Icons.location_on_outlined,
                    ),
                    InputFields(
                      controller: _controller,
                      hint:  'Where are you going',
                    ),
                    SizedBox(height: 10),
                    DescriptionField(
                      name: 'Guests', 
                      leftValue: 12.0, 
                      rightValue: 1.0, 
                      icon: Icons.people),
                    InputFields(
                      controller: _controller,
                      hint:  'Number of guests',
                    ),
                    SizedBox(height: 10),
                    DescriptionField(
                      name: 'Check-in', 
                      leftValue: 8.0, 
                      rightValue: 3.0, 
                      icon: Icons.calendar_month),
                    DatePickerButton(datePicker: _datePicker),
                    SizedBox(height: 10),
                    DescriptionField(
                      name: 'Check-out', 
                      leftValue: 8.0, 
                      rightValue: 3.0, 
                      icon: Icons.calendar_month),
                    DatePickerButton(datePicker: _datePicker2),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: double.infinity,
                      child: TextButton.icon(
                        onPressed: () {
                          //hotelProvider.updateBooking(_controller.text);
                        },
                        icon: Icon(Icons.search),
                        label: Text('Search Hotels'),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          backgroundColor: Colors.lightBlue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    //Consumer(builder: (context,user,_) => BookingPage())
                  ],
                ),
              ),
              SizedBox(height: 20),
              MessageContainer(
                title: 'Best Prices',
                subtitle: 'Compare and book at lowest rates',
              ),
              SizedBox(height: 20),
              MessageContainer(
                title: 'Verified Reviews',
                subtitle: 'Real reviews from real travelers',
              ),
              SizedBox(height: 20),
              MessageContainer(
                title: '24/7 Support',
                subtitle: 'We\'re here to help anytime you need',
              )
            ],
          ),
        ),
      ),
    );
  }
}





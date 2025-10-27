import 'package:flutter/material.dart';
import 'package:stayfinderapp/widgets/hotelbar.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Hotelbar(switchedPage: CurrentPage.info),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            child: Container(), //Image.network() ,
          )
        ],
      ),
    );
  }
}
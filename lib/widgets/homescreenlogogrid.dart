import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';

class HomeScreenLogoGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return DefaultTextStyle(
      style: TextStyle(fontSize: 110, color: Colors.black),
      child: Container(
       // decoration: BoxDecoration(border: Border.all(width: 1)),
        width: width*0.7,
        height: width*0.65,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          children: [
            Center(child: Text("O", style: TextStyle(color: OColor),),),
            Center(child: Text("X", style: TextStyle(color: XColor),),),
            Center(child: Text("X", style: TextStyle(color: XColor),),),
            Center(child: Text("O", style: TextStyle(color: OColor),),),
          ],
        )
      ),
    );
  }
}
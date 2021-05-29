import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';


class GameGrid extends StatelessWidget {
  dynamic data;
  Function fillSquareCallBack;
  GameGrid(this.data, this.fillSquareCallBack);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      width: width*0.9,
      height: width*0.7,
      color: Colors.blue,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          childAspectRatio: 1.1, 
          mainAxisSpacing: 5, 
          crossAxisSpacing: 5,
        ), 
        itemCount: 9,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => fillSquareCallBack(index),
            child: drawInSquare(data["gameMap"][index]),
          );
        },
      ),
    );
  }
}


Widget drawInSquare(number) {
  String itemToDraw = "";
  Color colorOfItem = Colors.transparent;

  if(number == 1) {
    itemToDraw = "X";
    colorOfItem = XColor;
  } else if(number == 2) {
    itemToDraw = "O";
    colorOfItem = OColor;
  } 

  return Container(
    alignment: Alignment.center,
    color: Colors.white,
    child: Text(itemToDraw, style: TextStyle(color: colorOfItem, fontSize: 50.0, fontWeight: FontWeight.bold),),
  );
}
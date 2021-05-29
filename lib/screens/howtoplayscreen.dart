import 'package:flutter/material.dart';


class HowToPlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: () => Navigator.of(context).pop()),
              ),
              howToPlayTitle(),
              howToPlayText(),
            ],
          ),
        ),
      ),
    );
  }
}


Widget howToPlayTitle() {
  return Positioned(
    top: 80,
    left: 20,
    child: Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Text(
        "How To Play ?",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    ),
  );
}


Widget howToPlayText() {
  return Positioned(
    width: 300,
    top: 120,
    left: 10,
    child: DefaultTextStyle(
      style: TextStyle(color: Colors.black, fontSize: 17,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("The goal of tic-tac-toe is to be the first player to get three in a row on a 3-by-3 grid."),
          SizedBox(height: 10,),
          Text("Players alternate placing Xs and Os on the board until either player has three in a row, horizontally, vertically, or diagonally or until all squares on the grid are filled."),
          SizedBox(height: 10,),
          Text("If a player is able to draw three Xs or three Os in a row, then that player wins. If all squares are filled and neither player has made a complete row of Xs or Os, then the game is a draw."),
        ],
      ),
    ),
  );
}
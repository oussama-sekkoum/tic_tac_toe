import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';


class ScoreBoard extends StatelessWidget {
  dynamic score;
  ScoreBoard(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: TextStyle(color: XColor),
            child: Column(
              children: [
                Text("X", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),), 
                Text("${score['X']} wins", style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Text("=", style: TextStyle(color: OColor, fontSize: 60)),
          DefaultTextStyle(
            style: TextStyle(color: OColor),
            child: Column(
              children: [
                Text("O", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),), 
                Text("${score['O']} wins", style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/routes/route_names.dart';


class ResetScoreButton extends StatelessWidget {
  Function ResetScoreCallBack;
  ResetScoreButton(this.ResetScoreCallBack);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
        width: width*0.8,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: XColor),
        child: TextButton(
          onPressed: () =>  this.ResetScoreCallBack(),
          child: Text('Reset Score', style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),),
        ),
    );
  }
}
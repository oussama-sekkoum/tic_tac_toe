import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/routes/route_names.dart';


class ResetGameButton extends StatelessWidget {
  Function ResetGameCallBack;
  ResetGameButton(this.ResetGameCallBack);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(bottom: 10),
        width: width*0.8,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: XColor),
        child: TextButton(
          onPressed: () =>  this.ResetGameCallBack(),
          child: Text('Reset Game', style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),),
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';


class HomeScreenLogoGridTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: XColor, fontSize: 21.0, fontWeight: FontWeight.w800),
          children: [
            TextSpan(text: "Tic "),
            TextSpan(text: "Tac ", style: TextStyle(color: OColor)),
            TextSpan(text: "Toe"),
          ]
        ),
      ),
    );
  }
}
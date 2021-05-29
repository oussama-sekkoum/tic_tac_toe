import 'package:flutter/material.dart';
import 'package:tic_tac_toe/routes/route_names.dart';


class HowToPlayButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaquery = MediaQuery.of(context);

    return Container(
        width: mediaquery.size.width*0.8,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 205, 151, 176),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(160),
              offset: Offset(3, 4),
              blurRadius: 4,
              spreadRadius: 1,
            )
          ]
        ),
        child: TextButton(
          onPressed: () => Navigator.of(context).pushNamed(HOWTOPLAYROUTE),
          child: Text('How To Play', style: TextStyle(color: Colors.white, fontSize: 17.0),),
        ),
    );
  }
}
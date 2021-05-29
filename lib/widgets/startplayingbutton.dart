import 'package:flutter/material.dart';
import 'package:tic_tac_toe/routes/route_names.dart';


class StartPlayingButton extends StatelessWidget {
  dynamic data;
  Function initializeNewGame;
  StartPlayingButton(this.data, this.initializeNewGame);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaquery = MediaQuery.of(context);

    return Container(
        width: mediaquery.size.width*0.8,
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 142, 151, 117),
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
          onPressed: () {
            initializeNewGame();
            Navigator.of(context).pushNamed(GAMEPLAYROUTE, arguments: this.data);
          }, 
          child: Text('New Game', style: TextStyle(color: Colors.white, fontSize: 17.0),),
        ),
    );
  }
}
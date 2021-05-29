import 'package:flutter/material.dart';
import 'package:tic_tac_toe/routes/route_names.dart';
import 'package:tic_tac_toe/screens/gameplayscreen.dart';
import 'package:tic_tac_toe/screens/homeScreen.dart';
import 'package:tic_tac_toe/screens/howtoplayscreen.dart';


MaterialPageRoute onGenerateRoute(settings) {
  dynamic arguments = settings.arguments;

  switch(settings.name){
    case HOWTOPLAYROUTE:
      return MaterialPageRoute(builder: (_) => HowToPlayScreen());
    case GAMEPLAYROUTE:
    return MaterialPageRoute(builder: (_) => GamePlayScreen(arguments));
    default:
      return MaterialPageRoute(builder: (_) => HomeScreen());
  }
}
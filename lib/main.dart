import 'package:flutter/material.dart';
import 'package:tic_tac_toe/routes/routes.dart';
import 'package:tic_tac_toe/screens/homeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      title: 'Tic Tac Toe',
      home: HomeScreen(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}

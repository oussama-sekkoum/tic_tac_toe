
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_data.dart';
import 'package:tic_tac_toe/widgets/continuegamebutton.dart';
import 'package:tic_tac_toe/widgets/homescreenlogo.dart';
import 'package:tic_tac_toe/widgets/howtoplaybutton.dart';
import 'package:tic_tac_toe/widgets/startplayingbutton.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }

  void initializeNewGame() {
    setState(() {
      data["score"]["X"] = 0;
      data["score"]["O"] = 0;
      data["gameMap"] = List.generate(9, (index) => 0);
      data["ongoingGame"] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 50,),
            HomeScreenLogo(),
            data["ongoingGame"] ? ContinueGameButton(data) : Container(),
            StartPlayingButton(data, initializeNewGame),
            HowToPlayButton()
          ],
        ),
      )
    );
  }
}
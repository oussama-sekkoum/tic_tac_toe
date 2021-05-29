import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/gamegrid.dart';
import 'package:tic_tac_toe/widgets/resetScoreButton.dart';
import 'package:tic_tac_toe/widgets/resetgameButton.dart';
import 'package:tic_tac_toe/widgets/scoreboard.dart';


class GamePlayScreen extends StatefulWidget {
  dynamic data;
  GamePlayScreen(this.data);

  @override
  _GamePlayScreenState createState() => _GamePlayScreenState();
}


class _GamePlayScreenState extends State<GamePlayScreen> {
  bool xplays = true;

  void fillSquareCallBack(int index) {
    if(widget.data["gameMap"][index] == 0) {
      setState(() {
        if(xplays) {
          widget.data["gameMap"][index] = 1;
        } else {
          widget.data["gameMap"][index] = 2;
        }
        checkWinnerCallBack(xplays);
        xplays = !xplays;        
      });
    }
  }
  void checkWinnerCallBack(bool isXcurrentPlayer) {
    int currentNumber = isXcurrentPlayer ? 1 : 2;
    List gameMap = widget.data["gameMap"];

    if(gameMap[0] == currentNumber && gameMap[1] == currentNumber && gameMap[2] == currentNumber) {
      weHaveAwinner(currentNumber);

    } else if(gameMap[3] == currentNumber && gameMap[4] == currentNumber && gameMap[5] == currentNumber) {
      weHaveAwinner(currentNumber);

    } else if(gameMap[6] == currentNumber && gameMap[7] == currentNumber && gameMap[8] == currentNumber) {
      weHaveAwinner(currentNumber);

    } else if(gameMap[0] == currentNumber && gameMap[3] == currentNumber && gameMap[6] == currentNumber) {
      weHaveAwinner(currentNumber);

    } else if(gameMap[1] == currentNumber && gameMap[4] == currentNumber && gameMap[7] == currentNumber) {
      weHaveAwinner(currentNumber);

    } else if(gameMap[2] == currentNumber && gameMap[5] == currentNumber && gameMap[8] == currentNumber) {
      weHaveAwinner(currentNumber);

    } else if(gameMap[0] == currentNumber && gameMap[4] == currentNumber && gameMap[8] == currentNumber) {
      weHaveAwinner(currentNumber);

    } else if(gameMap[2] == currentNumber && gameMap[4] == currentNumber && gameMap[6] == currentNumber) {
      weHaveAwinner(currentNumber);
    }
  }

  void weHaveAwinner(int currentNumber) {
    String winner = currentNumber == 1 ? "X" : "O";
    Color winnerColor = currentNumber == 1 ? Color.fromARGB(255, 247, 253, 4) : Color.fromARGB(255, 251, 54, 64);

    setState(() {
            widget.data["score"][winner] += 1;
    });

    showDialog(
      context: context, 
      builder: (context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(10),
          title: Center(child: Text("Congratulations", style: TextStyle(color: Color.fromARGB(255, 252, 84, 4)),)),
          children: [
            Center(child: Text("\"$winner\" won This game", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w800),)),
            SimpleDialogOption(
              onPressed: () {
                setState(() {
                  widget.data["gameMap"] = List.generate(9, (index) => 0);
                  xplays = true;
                });
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                child: Text("OK", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w800),)
              ),
            )
          ],
        );
      } 
    );

  }

  void resetGameCallBack() {
    setState(() {
      widget.data["gameMap"] = List.generate(9, (index) => 0);    
      xplays = true;  
    });
  }
  
  void resetScoreCallBack() {
    setState(() {
      widget.data["gameMap"] = List.generate(9, (index) => 0);    
      widget.data["score"]["X"] = 0;
      widget.data["score"]["O"] = 0;  
      xplays = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                ScoreBoard(widget.data["score"]),
                GameGrid(widget.data, fillSquareCallBack),
                ResetGameButton(resetGameCallBack),
                ResetScoreButton(resetScoreCallBack),
            ],
          ),
        ), 
      ),
    );
  }
}
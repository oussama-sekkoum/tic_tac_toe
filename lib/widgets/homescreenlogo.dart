import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/homegridlogotitle.dart';
import 'package:tic_tac_toe/widgets/homescreenlogogrid.dart';


class HomeScreenLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaquery = MediaQuery.of(context);

    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        children: [
          HomeScreenLogoGrid(),
          HomeScreenLogoGridTitle(),
        ],
      ),
    );
  }
}
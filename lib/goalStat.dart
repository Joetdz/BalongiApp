import 'package:flutter/material.dart';

Widget goalStat(int? expendedTime, int? homegoal, int? awaygoal) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${expendedTime}",
          style: TextStyle(fontSize: 30),
        ),
        Expanded(
            child: Center(
                child: Text(
          " ${homegoal} - ${awaygoal}",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36),
        )))
      ],
    ),
  );
}

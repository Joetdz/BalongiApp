import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gg/footmodel.dart';

Widget matchTile(MatchFoot match) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 30),
    padding: EdgeInsets.all(20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Text(
          match.home.name,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        )),
        Image.network(
          match.home.urllogo,
          width: 30,
          height: 30,
        ),
        Expanded(
            child: Text(
          "${match.goal.home} - ${match.goal.away}",
          style: TextStyle(fontSize: 29, color: Colors.white),
          textAlign: TextAlign.center,
        )),
        Image.network(
          match.away.urllogo,
          width: 36,
        ),
        SizedBox(
          width: 13,
        ),
        Expanded(
            child: Text(
          match.away.name,
          style: TextStyle(fontSize: 12, color: Colors.white),
        )),
      ],
    ),
  );
}

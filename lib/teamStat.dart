import 'package:flutter/material.dart';

Widget teamStat(String logoUrl, String team) {
  return Expanded(
      child: Column(
    children: [
      Text(
        "",
        style: TextStyle(fontSize: 18),
      ),
      Expanded(
          child: Image.network(
        logoUrl,
        width: 80,
        height: 80,
      )),
      SizedBox(
        height: 2,
      ),
      Text(
        team,
        style: TextStyle(fontSize: 18),
      ),
    ],
  ));
}

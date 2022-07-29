import 'package:flutter/material.dart';
import 'package:gg/footmodel.dart';
import 'package:gg/matchtile.dart';
import 'package:gg/teamStat.dart';
import 'package:gg/goalStat.dart';

Widget pageBody(List<MatchFoot> allmatches) {
  var container = Container(
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        color: Colors.blue),
    child: matchTile(allmatches[0]),
  );
  return Column(
    children: [
      Expanded(
        // ignore: sort_child_properties_last
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
        flex: 2,
      ),
    ],
  );
}

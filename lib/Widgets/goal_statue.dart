import 'package:flutter/material.dart';

Widget goalStatue(int expandedTime, int homeGoal, int awayGoal) {
  var elapsed = expandedTime;
  return Expanded(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '$elapsed',
        style: const TextStyle(fontSize: 30),
      ),
      Expanded(
        child: Center(
          child: Text(
            '$homeGoal - $awayGoal',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 36),
          ),
        ),
      )
    ],
  ));
}

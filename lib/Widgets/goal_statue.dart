import 'package:flutter/material.dart';

Widget goalStatue(var expandedTime, var homeGoal, var awayGoal) {
  var home = homeGoal;
  var away = awayGoal;
  var elapsed = expandedTime;

  home ??= 0;
  away ??= 0;
  elapsed ??= 0;
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

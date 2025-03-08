import 'package:flutter/material.dart';
import 'package:score_app/Models/match_model.dart';

Widget matchTile(MatchModel match) {
  var homeGoal = match.goals!.home;
  var awayGoal = match.goals!.away;
  homeGoal ??= 0;
  awayGoal ??= 0;
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            (match.home!.name).toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        Image.network(
          (match.home!.logo).toString(),
          width: 36,
        ),
        Expanded(
          child: Text(
            '${match.goals!.home} - ${match.goals!.away}',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        Image.network(
          (match.away!.logo).toString(),
          width: 36,
        ),
        Expanded(
          child: Text(
            (match.away!.name).toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:score_app/Models/match_model.dart';
import 'package:score_app/Widgets/goal_statue.dart';
import 'package:score_app/Widgets/match_tile.dart';
import 'package:score_app/Widgets/team_statue.dart';

Widget pageBody(List<MatchModel> allMatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                teamStatue('Local Team', (allMatches[0].home!.logo).toString(),
                    (allMatches[0].home!.name).toString()),
                goalStatue(
                    (allMatches[0].fixture!.status!.elapsed)!.toInt(),
                    (allMatches[0].goals!.home)!.toInt(),
                    (allMatches[0].goals!.away)!.toInt()),
                teamStatue(
                    'Visitor Team',
                    (allMatches[0].away!.logo).toString(),
                    (allMatches[0].away!.name).toString()),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Mathes',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: allMatches.length,
                      itemBuilder: (context, index) {
                        return matchTile(allMatches[index]);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

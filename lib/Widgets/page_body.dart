import 'package:flutter/material.dart';
import 'package:score_app/Models/match_model.dart';
import 'package:score_app/Widgets/match_tile.dart';

Widget pageBody(List<MatchModel> allMatches) {
  final leagueMatches = _groupMatchesByLeague(allMatches);

  return ListView.builder(
    itemCount: leagueMatches.keys.length,
    itemBuilder: (context, index) {
      final leagueName = leagueMatches.keys.elementAt(index);
      final matches = leagueMatches[leagueName]!;

      return _buildLeagueCard(leagueName, matches);
    },
  );
}

Map<String, List<MatchModel>> _groupMatchesByLeague(List<MatchModel> matches) {
  final Map<String, List<MatchModel>> result = {};
  for (final match in matches) {
    final key = match.leagueName ?? 'Unknown League';
    if (!result.containsKey(key)) result[key] = [];
    result[key]!.add(match);
  }
  return result;
}

Widget _buildLeagueCard(String leagueName, List<MatchModel> matches) {
  return Card(
    color: const Color(0xff272727),
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        _buildLeagueHeader(matches.first),
        _buildMatchesList(matches),
      ],
    ),
  );
}

Widget _buildLeagueHeader(MatchModel match) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      children: [
        /*
        Image.network(
          match.leagueFlagUrl,
          width: 20,
          height: 20,
        ),*/
        const SizedBox(width: 10),
        Text(
          match.leagueName ?? 'Unknown League',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
      ],
    ),
  );
}

Widget _buildMatchesList(List<MatchModel> matches) {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      color: const Color(0xff37c88d),
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListView.builder(
      itemCount: matches.length,
      itemBuilder: (context, index) => matchTile(matches[index]),
    ),
  );
}

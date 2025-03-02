import 'dart:convert';

import 'package:http/http.dart';
import 'package:score_app/Models/match_model.dart';

class ApiServices {
  static const headers = {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': 'f145208e500ec57f78894f6d6c8ef3fa'
  };

  Future<List<MatchModel>> getAllMatches() async {
    final apiUrl =
        Uri.parse('https://v3.football.api-sports.io/fixtures?live=all');

    Response response = await get(apiUrl, headers: headers);

    try {
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List<dynamic> matchsList = body['response'];
        print(body);
        List<MatchModel> matchs = matchsList
            .map((dynamic item) => MatchModel.fromJson(item))
            .toList();
        return matchs;
      }
      throw Exception('Faild Data ${response.statusCode}');
    } catch (ex) {
      throw Exception('Faild Data $ex');
    }
  }
}

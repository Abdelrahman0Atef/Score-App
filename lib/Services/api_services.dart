import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:score_app/Models/match_model.dart';

class ApiServices {
  static const headers = {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': 'da98c33da78ae51c2913a314949eb4b8'
  };

  Future<Map<String, String>> _getCountryCodeMap() async {
    final response = await http.get(
      Uri.parse('https://v3.football.api-sports.io/countries'),
      headers: headers,
    );

    Map<String, String> countryMap = {};
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      for (var country in data['response']) {
        countryMap[country['name']] = country['code'] ?? '';
      }
    }
    return countryMap;
  }

  Future<List<MatchModel>> getAllMatches() async {
    final matchesResponse = await http.get(
      Uri.parse('https://v3.football.api-sports.io/fixtures?live=all'),
      headers: headers,
    );

    if (matchesResponse.statusCode != 200) {
      throw Exception('Failed to load matches');
    }

    final countryMap = await _getCountryCodeMap();
    final matchesData = jsonDecode(matchesResponse.body);

    return (matchesData['response'] as List).map((match) {
      final countryName = match['league']['country']?.toString() ?? '';
      return MatchModel.fromJson(match, countryMap[countryName] ?? '');
    }).toList();
  }
}

import 'package:score_app/Models/fixture_model.dart';
import 'package:score_app/Models/goals_model.dart';
import 'package:score_app/Models/team_model.dart';

class MatchModel {
  FixtureModel? fixture;
  TeamModel? home;
  TeamModel? away;
  GoalsModel? goals;

  MatchModel({
    this.fixture,
    this.home,
    this.away,
    this.goals,
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    return MatchModel(
        fixture: FixtureModel.fromJson(json['fixture']),
        home: TeamModel.fromJson(json['teams']['home']),
        away: TeamModel.fromJson(json['teams']['away']),
        goals: GoalsModel.fromJson(json['goals']));
  }
}

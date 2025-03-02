import 'package:score_app/Models/status_model.dart';

class FixtureModel {
  int? id;
  int? date;
  StatusModel? status;

  FixtureModel({this.id, this.date, this.status});

  factory FixtureModel.fromJson(Map<String, dynamic> json) {
    return FixtureModel(
        id: json['id'],
        date: json['date'],
        status: StatusModel.fromJson(json['status']));
  }
}

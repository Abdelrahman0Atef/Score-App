import 'package:score_app/Models/status_model.dart';

class FixtureModel {
  int? id;
  int? date;
  StatusModel? status;

  FixtureModel({this.id, this.date, this.status});

  factory FixtureModel.fromJson(Map<String, dynamic> json) {
    return FixtureModel(
        id: int.tryParse(json['id'].toString()),
        date: int.tryParse(json['date'].toString()),
        status: StatusModel.fromJson(json['status']));
  }
}

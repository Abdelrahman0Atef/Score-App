class GoalsModel {
  int? home;
  int? away;

  GoalsModel({
    this.home,
    this.away,
  });

  factory GoalsModel.fromJson(Map<String, dynamic> json) {
    return GoalsModel(home: json['home'], away: json['away']);
  }
}

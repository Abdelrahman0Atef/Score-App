class GoalsModel {
  final int home;
  final int away;

  GoalsModel({
    required this.home,
    required this.away,
  });

  factory GoalsModel.fromJson(Map<String, dynamic> json) {
    return GoalsModel(
        home: int.tryParse(json['home'].toString()) ?? 0,
        away: int.tryParse(json['away'].toString()) ?? 0);
  }
}

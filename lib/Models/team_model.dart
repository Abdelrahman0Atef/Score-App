class TeamModel {
  int? id;
  String? name;
  String? logo;
  bool? winner;
  TeamModel({
    this.id,
    this.name,
    this.logo,
    this.winner,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
        id: json['id'],
        name: json['name'],
        logo: json['logo'],
        winner: json['winner']);
  }
}

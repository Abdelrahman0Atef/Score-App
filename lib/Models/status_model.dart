class StatusModel {
  int? elapsed;
  String? long;
  String? short;

  StatusModel({
    this.elapsed,
    this.long,
    this.short,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) {
    return StatusModel(
        elapsed: json['elapsed'], long: json['long'], short: json['short']);
  }
}

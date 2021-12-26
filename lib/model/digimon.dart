import 'package:equatable/equatable.dart';

class Digimon extends Equatable {
  final String name;
  final String img;
  final String level;

  Digimon({required this.name, required this.img, required this.level});

  factory Digimon.fromJson(Map<String, dynamic> json) =>
      Digimon(name: json["name"], img: json["img"], level: json["level"]);

  @override
  List<Object> get props => [name, img, level];
}

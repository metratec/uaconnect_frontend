import 'package:json_annotation/json_annotation.dart';

part 'info_section.g.dart';

@JsonSerializable(explicitToJson: true)
class InfoSection {
  int id;
  String title;
  String teaser;

  InfoSection({required this.id, required this.title, required this.teaser});

  factory InfoSection.fromJson(Map<String, dynamic> json) =>
      _$InfoSectionFromJson(json);

  Map<String, dynamic> toJson() => _$InfoSectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

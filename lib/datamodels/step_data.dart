import 'package:json_annotation/json_annotation.dart';

part 'step_data.g.dart';

@JsonSerializable(explicitToJson: true)
class StepData {
  int index;
  String name;
  String content;

  StepData({required this.index, required this.name, required this.content});

  factory StepData.fromJson(Map<String, dynamic> json) =>
      _$StepDataFromJson(json);

  Map<String, dynamic> toJson() => _$StepDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

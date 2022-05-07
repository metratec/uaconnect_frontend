import 'package:json_annotation/json_annotation.dart';

part 'newspost.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsPost {
  String date;
  String maintext;
  String hashtags;

  NewsPost(
      {required this.date, required this.maintext, required this.hashtags});

  factory NewsPost.fromJson(Map<String, dynamic> json) =>
      _$NewsPostFromJson(json);

  Map<String, dynamic> toJson() => _$NewsPostToJson(this);

  @override
  String toString() {
    return this.toJson().toString();
  }
}

import 'package:json_annotation/json_annotation.dart';

part 'info_article.g.dart';

@JsonSerializable(explicitToJson: true)
class InfoArticle {
  String title;
  String teaser;
  String heading;
  String fullText;

  InfoArticle(
      {required this.title,
      required this.teaser,
      required this.heading,
      required this.fullText});

  factory InfoArticle.fromJson(Map<String, dynamic> json) =>
      _$InfoArticleFromJson(json);

  Map<String, dynamic> toJson() => _$InfoArticleToJson(this);

  @override
  String toString() {
    return this.toJson().toString();
  }
}

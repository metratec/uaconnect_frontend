// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoArticle _$InfoArticleFromJson(Map<String, dynamic> json) => InfoArticle(
      title: json['title'] as String,
      teaser: json['teaser'] as String,
      heading: json['heading'] as String,
      fullText: json['fullText'] as String,
    );

Map<String, dynamic> _$InfoArticleToJson(InfoArticle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'teaser': instance.teaser,
      'heading': instance.heading,
      'fullText': instance.fullText,
    };

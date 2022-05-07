// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newspost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsPost _$NewsPostFromJson(Map<String, dynamic> json) => NewsPost(
      date: json['date'] as String,
      maintext: json['maintext'] as String,
      hashtags: json['hashtags'] as String,
    );

Map<String, dynamic> _$NewsPostToJson(NewsPost instance) => <String, dynamic>{
      'date': instance.date,
      'maintext': instance.maintext,
      'hashtags': instance.hashtags,
    };

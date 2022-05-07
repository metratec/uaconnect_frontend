// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      city: json['city'] as String? ?? '',
      iban: json['iban'] as String? ?? '',
      name: json['name'] as String,
      street: json['street'] as String? ?? '',
      vatId: json['vat_id'] as String? ?? '',
      zipCode: json['zip_code'] as String? ?? '',
      id: json['id'] as String,
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'city': instance.city,
      'iban': instance.iban,
      'name': instance.name,
      'street': instance.street,
      'vat_id': instance.vatId,
      'zip_code': instance.zipCode,
      'id': instance.id,
    };

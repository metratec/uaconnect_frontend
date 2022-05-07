import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable(explicitToJson: true)
class Content {
  final String city;
  final String iban;
  final String name;
  final String street;
  @JsonKey(name: 'vat_id')
  final String vatId;
  @JsonKey(name: 'zip_code')
  final String zipCode;
  final String id;

  Content({
    this.city = '',
    this.iban = '',
    required this.name,
    this.street = '',
    this.vatId = '',
    this.zipCode = '',
    required this.id,
  });

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

  @override
  String toString() {
    return this.toJson().toString();
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
abstract class Country with _$Country {
  const factory Country({
    required CountryName name,
    List<String>? capital,
    required String region,
    String? subregion,
    required int population,
    @JsonKey(name: 'flag') required String flagEmoji,
    required String cca2,
    @JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson)
    Map<String, String>? languages,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
abstract class CountryName with _$CountryName {
  const factory CountryName({
    required String common,
    required String official,
  }) = _CountryName;

  factory CountryName.fromJson(Map<String, dynamic> json) =>
      _$CountryNameFromJson(json);
}

Map<String, String>? _languagesFromJson(Object? json) {
  if (json == null) return null;
  final raw = json as Map<String, dynamic>;
  return raw.map((key, value) => MapEntry(key, value.toString()));
}

Object? _languagesToJson(Map<String, String>? languages) => languages;

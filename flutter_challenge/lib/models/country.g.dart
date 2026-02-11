// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
  name: CountryName.fromJson(json['name'] as Map<String, dynamic>),
  capital: (json['capital'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  region: json['region'] as String,
  subregion: json['subregion'] as String?,
  population: (json['population'] as num).toInt(),
  flagEmoji: json['flag'] as String,
  cca2: json['cca2'] as String,
  languages: _languagesFromJson(json['languages']),
);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'name': instance.name,
  'capital': instance.capital,
  'region': instance.region,
  'subregion': instance.subregion,
  'population': instance.population,
  'flag': instance.flagEmoji,
  'cca2': instance.cca2,
  'languages': _languagesToJson(instance.languages),
};

_CountryName _$CountryNameFromJson(Map<String, dynamic> json) => _CountryName(
  common: json['common'] as String,
  official: json['official'] as String,
);

Map<String, dynamic> _$CountryNameToJson(_CountryName instance) =>
    <String, dynamic>{'common': instance.common, 'official': instance.official};

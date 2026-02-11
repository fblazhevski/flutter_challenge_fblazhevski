// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Country {

/// Nested object:
/// "name": { "common": "...", "official": "..." }
 CountryName get name;/// API uses array form:
/// "capital": ["Skopje"]
/// Some countries don't have capitals -> null.
 List<String>? get capital;/// Example: "Europe"
 String get region;/// Example: "Southern Europe"
/// Can be missing -> null.
 String? get subregion;/// Population number (fits in int for these values).
 int get population;/// REST Countries uses "flag" for the emoji.
/// We rename it for clarity in Dart.
@JsonKey(name: 'flag') String get flagEmoji;/// 2-letter ISO code, used as route param (e.g. "MK").
 String get cca2;/// API returns languages like:
/// "languages": { "mkd": "Macedonian", "sqi": "Albanian" }
///
/// In raw JSON, values are dynamic, but we want a typed map for UI display.
/// fromJson ensures values become strings safely.
@JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson) Map<String, String>? get languages;
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCopyWith<Country> get copyWith => _$CountryCopyWithImpl<Country>(this as Country, _$identity);

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Country&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.capital, capital)&&(identical(other.region, region) || other.region == region)&&(identical(other.subregion, subregion) || other.subregion == subregion)&&(identical(other.population, population) || other.population == population)&&(identical(other.flagEmoji, flagEmoji) || other.flagEmoji == flagEmoji)&&(identical(other.cca2, cca2) || other.cca2 == cca2)&&const DeepCollectionEquality().equals(other.languages, languages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(capital),region,subregion,population,flagEmoji,cca2,const DeepCollectionEquality().hash(languages));

@override
String toString() {
  return 'Country(name: $name, capital: $capital, region: $region, subregion: $subregion, population: $population, flagEmoji: $flagEmoji, cca2: $cca2, languages: $languages)';
}


}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res>  {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) = _$CountryCopyWithImpl;
@useResult
$Res call({
 CountryName name, List<String>? capital, String region, String? subregion, int population,@JsonKey(name: 'flag') String flagEmoji, String cca2,@JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson) Map<String, String>? languages
});


$CountryNameCopyWith<$Res> get name;

}
/// @nodoc
class _$CountryCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? capital = freezed,Object? region = null,Object? subregion = freezed,Object? population = null,Object? flagEmoji = null,Object? cca2 = null,Object? languages = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as CountryName,capital: freezed == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as List<String>?,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,subregion: freezed == subregion ? _self.subregion : subregion // ignore: cast_nullable_to_non_nullable
as String?,population: null == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int,flagEmoji: null == flagEmoji ? _self.flagEmoji : flagEmoji // ignore: cast_nullable_to_non_nullable
as String,cca2: null == cca2 ? _self.cca2 : cca2 // ignore: cast_nullable_to_non_nullable
as String,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryNameCopyWith<$Res> get name {
  
  return $CountryNameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}
}


/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Country value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Country value)  $default,){
final _that = this;
switch (_that) {
case _Country():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Country value)?  $default,){
final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CountryName name,  List<String>? capital,  String region,  String? subregion,  int population, @JsonKey(name: 'flag')  String flagEmoji,  String cca2, @JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson)  Map<String, String>? languages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.name,_that.capital,_that.region,_that.subregion,_that.population,_that.flagEmoji,_that.cca2,_that.languages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CountryName name,  List<String>? capital,  String region,  String? subregion,  int population, @JsonKey(name: 'flag')  String flagEmoji,  String cca2, @JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson)  Map<String, String>? languages)  $default,) {final _that = this;
switch (_that) {
case _Country():
return $default(_that.name,_that.capital,_that.region,_that.subregion,_that.population,_that.flagEmoji,_that.cca2,_that.languages);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CountryName name,  List<String>? capital,  String region,  String? subregion,  int population, @JsonKey(name: 'flag')  String flagEmoji,  String cca2, @JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson)  Map<String, String>? languages)?  $default,) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.name,_that.capital,_that.region,_that.subregion,_that.population,_that.flagEmoji,_that.cca2,_that.languages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Country implements Country {
  const _Country({required this.name, final  List<String>? capital, required this.region, this.subregion, required this.population, @JsonKey(name: 'flag') required this.flagEmoji, required this.cca2, @JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson) final  Map<String, String>? languages}): _capital = capital,_languages = languages;
  factory _Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

/// Nested object:
/// "name": { "common": "...", "official": "..." }
@override final  CountryName name;
/// API uses array form:
/// "capital": ["Skopje"]
/// Some countries don't have capitals -> null.
 final  List<String>? _capital;
/// API uses array form:
/// "capital": ["Skopje"]
/// Some countries don't have capitals -> null.
@override List<String>? get capital {
  final value = _capital;
  if (value == null) return null;
  if (_capital is EqualUnmodifiableListView) return _capital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Example: "Europe"
@override final  String region;
/// Example: "Southern Europe"
/// Can be missing -> null.
@override final  String? subregion;
/// Population number (fits in int for these values).
@override final  int population;
/// REST Countries uses "flag" for the emoji.
/// We rename it for clarity in Dart.
@override@JsonKey(name: 'flag') final  String flagEmoji;
/// 2-letter ISO code, used as route param (e.g. "MK").
@override final  String cca2;
/// API returns languages like:
/// "languages": { "mkd": "Macedonian", "sqi": "Albanian" }
///
/// In raw JSON, values are dynamic, but we want a typed map for UI display.
/// fromJson ensures values become strings safely.
 final  Map<String, String>? _languages;
/// API returns languages like:
/// "languages": { "mkd": "Macedonian", "sqi": "Albanian" }
///
/// In raw JSON, values are dynamic, but we want a typed map for UI display.
/// fromJson ensures values become strings safely.
@override@JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson) Map<String, String>? get languages {
  final value = _languages;
  if (value == null) return null;
  if (_languages is EqualUnmodifiableMapView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCopyWith<_Country> get copyWith => __$CountryCopyWithImpl<_Country>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Country&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._capital, _capital)&&(identical(other.region, region) || other.region == region)&&(identical(other.subregion, subregion) || other.subregion == subregion)&&(identical(other.population, population) || other.population == population)&&(identical(other.flagEmoji, flagEmoji) || other.flagEmoji == flagEmoji)&&(identical(other.cca2, cca2) || other.cca2 == cca2)&&const DeepCollectionEquality().equals(other._languages, _languages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_capital),region,subregion,population,flagEmoji,cca2,const DeepCollectionEquality().hash(_languages));

@override
String toString() {
  return 'Country(name: $name, capital: $capital, region: $region, subregion: $subregion, population: $population, flagEmoji: $flagEmoji, cca2: $cca2, languages: $languages)';
}


}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) = __$CountryCopyWithImpl;
@override @useResult
$Res call({
 CountryName name, List<String>? capital, String region, String? subregion, int population,@JsonKey(name: 'flag') String flagEmoji, String cca2,@JsonKey(fromJson: _languagesFromJson, toJson: _languagesToJson) Map<String, String>? languages
});


@override $CountryNameCopyWith<$Res> get name;

}
/// @nodoc
class __$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? capital = freezed,Object? region = null,Object? subregion = freezed,Object? population = null,Object? flagEmoji = null,Object? cca2 = null,Object? languages = freezed,}) {
  return _then(_Country(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as CountryName,capital: freezed == capital ? _self._capital : capital // ignore: cast_nullable_to_non_nullable
as List<String>?,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,subregion: freezed == subregion ? _self.subregion : subregion // ignore: cast_nullable_to_non_nullable
as String?,population: null == population ? _self.population : population // ignore: cast_nullable_to_non_nullable
as int,flagEmoji: null == flagEmoji ? _self.flagEmoji : flagEmoji // ignore: cast_nullable_to_non_nullable
as String,cca2: null == cca2 ? _self.cca2 : cca2 // ignore: cast_nullable_to_non_nullable
as String,languages: freezed == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryNameCopyWith<$Res> get name {
  
  return $CountryNameCopyWith<$Res>(_self.name, (value) {
    return _then(_self.copyWith(name: value));
  });
}
}


/// @nodoc
mixin _$CountryName {

 String get common; String get official;
/// Create a copy of CountryName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryNameCopyWith<CountryName> get copyWith => _$CountryNameCopyWithImpl<CountryName>(this as CountryName, _$identity);

  /// Serializes this CountryName to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryName&&(identical(other.common, common) || other.common == common)&&(identical(other.official, official) || other.official == official));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common,official);

@override
String toString() {
  return 'CountryName(common: $common, official: $official)';
}


}

/// @nodoc
abstract mixin class $CountryNameCopyWith<$Res>  {
  factory $CountryNameCopyWith(CountryName value, $Res Function(CountryName) _then) = _$CountryNameCopyWithImpl;
@useResult
$Res call({
 String common, String official
});




}
/// @nodoc
class _$CountryNameCopyWithImpl<$Res>
    implements $CountryNameCopyWith<$Res> {
  _$CountryNameCopyWithImpl(this._self, this._then);

  final CountryName _self;
  final $Res Function(CountryName) _then;

/// Create a copy of CountryName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? common = null,Object? official = null,}) {
  return _then(_self.copyWith(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as String,official: null == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryName].
extension CountryNamePatterns on CountryName {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryName value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryName() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryName value)  $default,){
final _that = this;
switch (_that) {
case _CountryName():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryName value)?  $default,){
final _that = this;
switch (_that) {
case _CountryName() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String common,  String official)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryName() when $default != null:
return $default(_that.common,_that.official);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String common,  String official)  $default,) {final _that = this;
switch (_that) {
case _CountryName():
return $default(_that.common,_that.official);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String common,  String official)?  $default,) {final _that = this;
switch (_that) {
case _CountryName() when $default != null:
return $default(_that.common,_that.official);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryName implements CountryName {
  const _CountryName({required this.common, required this.official});
  factory _CountryName.fromJson(Map<String, dynamic> json) => _$CountryNameFromJson(json);

@override final  String common;
@override final  String official;

/// Create a copy of CountryName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryNameCopyWith<_CountryName> get copyWith => __$CountryNameCopyWithImpl<_CountryName>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryNameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryName&&(identical(other.common, common) || other.common == common)&&(identical(other.official, official) || other.official == official));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,common,official);

@override
String toString() {
  return 'CountryName(common: $common, official: $official)';
}


}

/// @nodoc
abstract mixin class _$CountryNameCopyWith<$Res> implements $CountryNameCopyWith<$Res> {
  factory _$CountryNameCopyWith(_CountryName value, $Res Function(_CountryName) _then) = __$CountryNameCopyWithImpl;
@override @useResult
$Res call({
 String common, String official
});




}
/// @nodoc
class __$CountryNameCopyWithImpl<$Res>
    implements _$CountryNameCopyWith<$Res> {
  __$CountryNameCopyWithImpl(this._self, this._then);

  final _CountryName _self;
  final $Res Function(_CountryName) _then;

/// Create a copy of CountryName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? common = null,Object? official = null,}) {
  return _then(_CountryName(
common: null == common ? _self.common : common // ignore: cast_nullable_to_non_nullable
as String,official: null == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

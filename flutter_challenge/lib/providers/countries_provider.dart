import 'dart:io';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../core/dio.dart';
import '../models/country.dart';

part 'countries_provider.g.dart';

const _fields = [
  'name',
  'capital',
  'region',
  'subregion',
  'population',
  'flag',
  'cca2',
  'languages',
];

class CountriesApi {
  CountriesApi(this._dio);

  final Dio _dio;

  Future<List<Country>> fetchCountries() async {
    final response = await _dio.get(
      '/all',
      queryParameters: {'fields': _fields.join(',')},
    );

    final data = response.data;
    if (data is! List) {
      throw const FormatException('Eexpected a list. Error!');
    }

    return data
        .whereType<Map<String, dynamic>>()
        .map(Country.fromJson)
        .toList(growable: false);
  }
}

@riverpod
CountriesApi countriesApi(Ref ref) {
  return CountriesApi(dio);
}

@riverpod
Future<List<Country>> countries(Ref ref) async {
  final api = ref.watch(countriesApiProvider);

  try {
    return await api.fetchCountries();
  } on DioException catch (e) {
    final message = switch (e.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.receiveTimeout ||
      DioExceptionType.sendTimeout => 'Connection timed out...',
      DioExceptionType.connectionError => 'No internet connection...',
      DioExceptionType.badResponse =>
        'Server error (${e.response?.statusCode}).',
      _ => 'Something went wrong. Please try again.',
    };
    throw Exception(message);
  } on SocketException {
    throw Exception('No internet connection. Check your network.');
  } on FormatException catch (e) {
    throw Exception('Data format error: ${e.message}');
  } catch (_) {
    throw Exception('Something went wrong. Please try again.');
  }
}

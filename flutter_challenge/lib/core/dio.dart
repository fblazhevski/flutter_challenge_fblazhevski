import 'package:dio/dio.dart';

final Dio dio = Dio(
  BaseOptions(
    baseUrl: 'https://restcountries.com/v3.1',

    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),

    responseType: ResponseType.json,

    headers: const {'Accept': 'application/json'},
  ),
);

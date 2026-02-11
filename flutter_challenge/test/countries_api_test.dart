import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'mocks.mocks.dart';
import 'package:flutter_challenge/providers/countries_provider.dart';

void main() {
  test('CountriesApi parses JSON response into Country model', () async {
    final mockDio = MockDio();
    final api = CountriesApi(mockDio);

    // This is a minimal sample response matching the fields we request.
    final sampleJson = [
      {
        "name": {
          "common": "North Macedonia",
          "official": "Republic of North Macedonia"
        },
        "capital": ["Skopje"],
        "region": "Europe",
        "subregion": "Southeast Europe",
        "population": 2077132,
        "flag": "🇲🇰",
        "cca2": "MK",
        "languages": {"mkd": "Macedonian", "sqi": "Albanian"}
      }
    ];

    when(
      mockDio.get(
        any,
        queryParameters: anyNamed('queryParameters'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: sampleJson,
        statusCode: 200,
        requestOptions: RequestOptions(path: '/all'),
      ),
    );

    final countries = await api.fetchCountries();

    expect(countries, hasLength(1));
    final c = countries.first;

    expect(c.cca2, 'MK');
    expect(c.flagEmoji, '🇲🇰');
    expect(c.name.common, 'North Macedonia');
    expect(c.name.official, contains('North Macedonia'));
    expect(c.capital, ['Skopje']);
    expect(c.region, 'Europe');
    expect(c.subregion, 'Southeast Europe');
    expect(c.population, 2077132);
    expect(c.languages?['mkd'], 'Macedonian');
  });
}

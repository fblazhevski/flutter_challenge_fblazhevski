import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_challenge/models/country.dart';
import 'package:flutter_challenge/providers/countries_search_provider.dart';
import 'package:flutter_challenge/screens/countries_screen.dart';

void main() {
  testWidgets('CountriesScreen renders country names from provider',
      (WidgetTester tester) async {
    final mockCountries = [
      Country(
        name: const CountryName(common: 'Japan', official: 'Japan'),
        capital: const ['Tokyo'],
        region: 'Asia',
        subregion: 'Eastern Asia',
        population: 1,
        flagEmoji: '🇯🇵',
        cca2: 'JP',
        languages: const {'jpn': 'Japanese'},
      ),
      Country(
        name: const CountryName(common: 'Brazil', official: 'Federative Republic of Brazil'),
        capital: const ['Brasília'],
        region: 'Americas',
        subregion: 'South America',
        population: 2,
        flagEmoji: '🇧🇷',
        cca2: 'BR',
        languages: const {'por': 'Portuguese'},
      ),
    ];

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          countrySearchQueryProvider.overrideWithValue(''),
          filteredCountriesProvider.overrideWithValue(
            AsyncValue.data(mockCountries),
          ),
        ],
        child: const MaterialApp(
          home: CountriesScreen(),
        ),
      ),
    );

    await tester.pump();

    expect(find.text('Japan'), findsOneWidget);
    expect(find.text('Brazil'), findsOneWidget);
  });
}

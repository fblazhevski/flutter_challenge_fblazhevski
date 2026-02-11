import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'countries_provider.dart';
import '../models/country.dart';

part 'countries_search_provider.g.dart';

@riverpod
class CountrySearchQuery extends _$CountrySearchQuery {
  @override
  String build() => '';

  void setQuery(String value) {
    state = value;
  }

  void clear() {
    state = '';
  }
}

@riverpod
AsyncValue<List<Country>> filteredCountries(Ref ref) {
  final query = ref.watch(countrySearchQueryProvider).trim().toLowerCase();
  final asyncCountries = ref.watch(countriesProvider);

  return asyncCountries.whenData((countries) {
    if (query.isEmpty) return countries;

    return countries
        .where((c) => c.name.common.toLowerCase().contains(query))
        .toList(growable: false);
  });
}

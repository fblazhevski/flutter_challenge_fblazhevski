// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Holds the current search text (client-side filtering).
///
/// Interview note:
/// Keeping search query separate means:
/// - fetching logic stays independent
/// - filtering becomes a pure, testable transformation

@ProviderFor(CountrySearchQuery)
const countrySearchQueryProvider = CountrySearchQueryProvider._();

/// Holds the current search text (client-side filtering).
///
/// Interview note:
/// Keeping search query separate means:
/// - fetching logic stays independent
/// - filtering becomes a pure, testable transformation
final class CountrySearchQueryProvider
    extends $NotifierProvider<CountrySearchQuery, String> {
  /// Holds the current search text (client-side filtering).
  ///
  /// Interview note:
  /// Keeping search query separate means:
  /// - fetching logic stays independent
  /// - filtering becomes a pure, testable transformation
  const CountrySearchQueryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'countrySearchQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$countrySearchQueryHash();

  @$internal
  @override
  CountrySearchQuery create() => CountrySearchQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$countrySearchQueryHash() =>
    r'183e3c897a179738c4b21b666dd4f8457b86f631';

/// Holds the current search text (client-side filtering).
///
/// Interview note:
/// Keeping search query separate means:
/// - fetching logic stays independent
/// - filtering becomes a pure, testable transformation

abstract class _$CountrySearchQuery extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Derived provider: takes fetched countries + search query
/// and returns the filtered list.
///
/// Requirements:
/// - filtering happens client-side
/// - filters by country name as user types (common name)

@ProviderFor(filteredCountries)
const filteredCountriesProvider = FilteredCountriesProvider._();

/// Derived provider: takes fetched countries + search query
/// and returns the filtered list.
///
/// Requirements:
/// - filtering happens client-side
/// - filters by country name as user types (common name)

final class FilteredCountriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Country>>,
          AsyncValue<List<Country>>,
          AsyncValue<List<Country>>
        >
    with $Provider<AsyncValue<List<Country>>> {
  /// Derived provider: takes fetched countries + search query
  /// and returns the filtered list.
  ///
  /// Requirements:
  /// - filtering happens client-side
  /// - filters by country name as user types (common name)
  const FilteredCountriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filteredCountriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filteredCountriesHash();

  @$internal
  @override
  $ProviderElement<AsyncValue<List<Country>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AsyncValue<List<Country>> create(Ref ref) {
    return filteredCountries(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<Country>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<Country>>>(value),
    );
  }
}

String _$filteredCountriesHash() => r'fbf0cd802e960f177e96d65c69e45a9c39e3df3b';

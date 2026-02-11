// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the CountriesApi instance.
/// In production we use the app's real Dio.
/// In tests, we can override this provider to inject a mock API or mock Dio.

@ProviderFor(countriesApi)
const countriesApiProvider = CountriesApiProvider._();

/// Provides the CountriesApi instance.
/// In production we use the app's real Dio.
/// In tests, we can override this provider to inject a mock API or mock Dio.

final class CountriesApiProvider
    extends $FunctionalProvider<CountriesApi, CountriesApi, CountriesApi>
    with $Provider<CountriesApi> {
  /// Provides the CountriesApi instance.
  /// In production we use the app's real Dio.
  /// In tests, we can override this provider to inject a mock API or mock Dio.
  const CountriesApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'countriesApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$countriesApiHash();

  @$internal
  @override
  $ProviderElement<CountriesApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CountriesApi create(Ref ref) {
    return countriesApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CountriesApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CountriesApi>(value),
    );
  }
}

String _$countriesApiHash() => r'65403e97ab84301ae84ebef33bf962db991943dd';

/// Fetches the list of countries and exposes AsyncValue states.
///
/// Important:
/// - The UI should watch `countriesProvider` (and derived filtering providers).
/// - This provider delegates to CountriesApi, which keeps it testable.

@ProviderFor(countries)
const countriesProvider = CountriesProvider._();

/// Fetches the list of countries and exposes AsyncValue states.
///
/// Important:
/// - The UI should watch `countriesProvider` (and derived filtering providers).
/// - This provider delegates to CountriesApi, which keeps it testable.

final class CountriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Country>>,
          List<Country>,
          FutureOr<List<Country>>
        >
    with $FutureModifier<List<Country>>, $FutureProvider<List<Country>> {
  /// Fetches the list of countries and exposes AsyncValue states.
  ///
  /// Important:
  /// - The UI should watch `countriesProvider` (and derived filtering providers).
  /// - This provider delegates to CountriesApi, which keeps it testable.
  const CountriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'countriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$countriesHash();

  @$internal
  @override
  $FutureProviderElement<List<Country>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Country>> create(Ref ref) {
    return countries(ref);
  }
}

String _$countriesHash() => r'8ee0f32daab8e37b03e573cd97328e7ae2c97be5';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// App theme state.
/// We start in LIGHT mode (deterministic), then toggle light <-> dark.
///
/// Interview note:
/// ThemeMode.system can be nice, but for this challenge a deterministic default
/// avoids confusing behavior across devices.

@ProviderFor(ThemeModeController)
const themeModeControllerProvider = ThemeModeControllerProvider._();

/// App theme state.
/// We start in LIGHT mode (deterministic), then toggle light <-> dark.
///
/// Interview note:
/// ThemeMode.system can be nice, but for this challenge a deterministic default
/// avoids confusing behavior across devices.
final class ThemeModeControllerProvider
    extends $NotifierProvider<ThemeModeController, ThemeMode> {
  /// App theme state.
  /// We start in LIGHT mode (deterministic), then toggle light <-> dark.
  ///
  /// Interview note:
  /// ThemeMode.system can be nice, but for this challenge a deterministic default
  /// avoids confusing behavior across devices.
  const ThemeModeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeModeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeModeControllerHash();

  @$internal
  @override
  ThemeModeController create() => ThemeModeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$themeModeControllerHash() =>
    r'3e0a4787c5684878c6c89be8e578a8f7c54a9d1c';

/// App theme state.
/// We start in LIGHT mode (deterministic), then toggle light <-> dark.
///
/// Interview note:
/// ThemeMode.system can be nice, but for this challenge a deterministic default
/// avoids confusing behavior across devices.

abstract class _$ThemeModeController extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

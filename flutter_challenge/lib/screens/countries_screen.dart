import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../models/country.dart';
import '../providers/countries_provider.dart';
import '../providers/countries_search_provider.dart';
import '../providers/theme_provider.dart';

class CountriesScreen extends ConsumerWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCountries = ref.watch(filteredCountriesProvider);
    final themeMode = ref.watch(themeModeControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Filip Blazhevski Challenge'),
        actions: [
          IconButton(
            tooltip: (themeMode == ThemeMode.dark) ? 'Light mode' : 'Dark mode',
            onPressed: () => ref
                .read(themeModeControllerProvider.notifier)
                .toggleLightDark(),
            icon: Icon(
              themeMode == ThemeMode.dark
                  ? Icons.light_mode_rounded
                  : Icons.dark_mode_rounded,
            ),
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: Column(
        children: [
          const _SearchBar(),
          Expanded(
            child: asyncCountries.when(
              loading: () => const _LoadingView(),
              error: (error, _) => _ErrorState(
                message: _prettyError(error),
                onRetry: () => ref.invalidate(countriesProvider),
              ),
              data: (countries) => _CountriesList(
                countries: countries,
                onRefresh: () async {
                  ref.invalidate(countriesProvider);

                  await ref.read(countriesProvider.future);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _prettyError(Object error) {
  final s = error.toString();
  return s.startsWith('Exception: ') ? s.replaceFirst('Exception: ', '') : s;
}

class _SearchBar extends ConsumerWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(countrySearchQueryProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      child: TextField(
        controller: TextEditingController(text: query)
          ..selection = TextSelection.collapsed(offset: query.length),
        onChanged: (value) =>
            ref.read(countrySearchQueryProvider.notifier).setQuery(value),
        decoration: InputDecoration(
          hintText: 'Search by country name…',
          prefixIcon: const Icon(Icons.search_rounded),
          suffixIcon: query.isEmpty
              ? null
              : IconButton(
                  tooltip: 'Clear',
                  icon: const Icon(Icons.clear_rounded),
                  onPressed: () =>
                      ref.read(countrySearchQueryProvider.notifier).clear(),
                ),
        ),
      ),
    );
  }
}

class _CountriesList extends StatelessWidget {
  const _CountriesList({required this.countries, required this.onRefresh});

  final List<Country> countries;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    if (countries.isEmpty) {
      return RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: const [
            SizedBox(height: 120),
            Center(child: Text('No countries found.')),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final c = countries[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _CountryCard(country: c),
          );
        },
      ),
    );
  }
}

class _CountryCard extends StatelessWidget {
  const _CountryCard({required this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Material(
      color: scheme.surface,
      elevation: 1.5,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => context.push('/country/${country.cca2}'),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: scheme.surfaceContainerHighest.withValues(alpha: 0.65),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  country.flagEmoji,
                  style: const TextStyle(
                    fontSize: 22,
                    fontFamilyFallback: [
                      'Noto Color Emoji',
                      'Segoe UI Emoji',
                      'Apple Color Emoji',
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      country.name.common,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      country.region,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),

              Icon(Icons.chevron_right_rounded, color: scheme.onSurfaceVariant),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 28,
        height: 28,
        child: CircularProgressIndicator(strokeWidth: 3),
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.wifi_off_rounded, size: 44),
            const SizedBox(height: 10),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

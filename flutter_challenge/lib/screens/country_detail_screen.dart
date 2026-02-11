import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/countries_provider.dart';
import '../shared/formtters.dart';

class CountryDetailScreen extends ConsumerWidget {
  const CountryDetailScreen({super.key, required this.code});

  final String code;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCountries = ref.watch(countriesProvider);
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Country Details')),
      body: asyncCountries.when(
        loading: () => const Center(
          child: SizedBox(
            width: 28,
            height: 28,
            child: CircularProgressIndicator(strokeWidth: 3),
          ),
        ),
        error: (error, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              _prettyError(error),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
        data: (countries) {
          final country = countries
              .where((c) => c.cca2.toUpperCase() == code.toUpperCase())
              .toList()
              .firstOrNull;

          if (country == null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  'Country not found: $code',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            );
          }

          final capitals = (country.capital == null || country.capital!.isEmpty)
              ? '—'
              : country.capital!.join(', ');

          final subregion =
              (country.subregion == null || country.subregion!.isEmpty)
              ? '—'
              : country.subregion!;

          final population = formatPopulation(country.population);

          final languages =
              (country.languages == null || country.languages!.isEmpty)
              ? '—'
              : country.languages!.values.join(', ');

          return ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            children: [
              //Header card
              Material(
                color: scheme.surface,
                elevation: 1.5,
                borderRadius: BorderRadius.circular(16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Flag
                      Container(
                        width: 64,
                        height: 64,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: scheme.surfaceContainerHighest.withValues(
                            alpha: 0.65,
                          ),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          country.flagEmoji,
                          style: const TextStyle(
                            fontSize: 30,
                            // Emojis
                            fontFamilyFallback: [
                              'Noto Color Emoji',
                              'Segoe UI Emoji',
                              'Apple Color Emoji',
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),

                      //Names
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              country.name.common,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              country.name.official,
                              style: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(color: scheme.onSurfaceVariant),
                            ),
                            const SizedBox(height: 10),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: [
                                _Chip(
                                  icon: Icons.public_rounded,
                                  text: country.region,
                                ),
                                _Chip(
                                  icon: Icons.pin_drop_rounded,
                                  text: subregion,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              //Info
              Material(
                color: scheme.surface,
                elevation: 1.5,
                borderRadius: BorderRadius.circular(16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _InfoRow(
                        icon: Icons.location_city_rounded,
                        label: 'Capital',
                        value: capitals,
                      ),
                      const Divider(height: 22),
                      _InfoRow(
                        icon: Icons.people_alt_rounded,
                        label: 'Population',
                        value: population,
                      ),
                      const Divider(height: 22),
                      _InfoRow(
                        icon: Icons.translate_rounded,
                        label: 'Languages',
                        value: languages,
                      ),
                      const Divider(height: 22),
                      _InfoRow(
                        icon: Icons.badge_rounded,
                        label: 'Code (CCA2)',
                        value: country.cca2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: scheme.onSurfaceVariant),
        const SizedBox(width: 10),
        SizedBox(
          width: 110,
          child: Text(label, style: Theme.of(context).textTheme.labelLarge),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(value, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.65),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: scheme.onSurfaceVariant),
          const SizedBox(width: 6),
          Text(text, style: Theme.of(context).textTheme.labelMedium),
        ],
      ),
    );
  }
}

String _prettyError(Object error) {
  final s = error.toString();
  return s.startsWith('Exception: ') ? s.replaceFirst('Exception: ', '') : s;
}

extension _FirstOrNull<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}

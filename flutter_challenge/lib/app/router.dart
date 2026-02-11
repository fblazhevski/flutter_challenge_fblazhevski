import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/countries_screen.dart';
import '../screens/country_detail_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'countries',
      builder: (context, state) => const CountriesScreen(),
    ),
    GoRoute(
      path: '/country/:code',
      name: 'countryDetail',
      pageBuilder: (context, state) {
        final code = state.pathParameters['code']!;

        return CustomTransitionPage(
          key: state.pageKey,
          child: CountryDetailScreen(code: code),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curved = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
              reverseCurve: Curves.easeInCubic,
            );

            return FadeTransition(
              opacity: curved,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.06),
                  end: Offset.zero,
                ).animate(curved),
                child: child,
              ),
            );
          },
        );
      },
    ),
  ],
);

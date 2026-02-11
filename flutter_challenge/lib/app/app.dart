import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/theme_provider.dart';
import 'router.dart';

class FilipBlazhevskiChallenge extends ConsumerWidget {
  const FilipBlazhevskiChallenge({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeControllerProvider);
    final lightScheme = ColorScheme.fromSeed(seedColor: Colors.indigo);
    final darkScheme = ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: Brightness.dark,
    );

    return MaterialApp.router(
      title: 'FilipBlazhevski Challenge',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      themeMode: themeMode,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightScheme,
        appBarTheme: const AppBarTheme(centerTitle: false),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        ),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkScheme,
        appBarTheme: const AppBarTheme(centerTitle: false),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        ),
      ),
    );
  }
}

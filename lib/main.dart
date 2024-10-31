import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moodtracker/views/layout/app_scaffold.dart';
import 'package:moodtracker/views/layout/clean_scaffold.dart';
import 'package:moodtracker/views/screens/home_screen.dart';
import 'package:moodtracker/views/screens/mood_item_screen.dart';
import 'package:moodtracker/views/screens/records_screen.dart';
import 'package:moodtracker/views/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => AppScaffold(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/records',
          builder: (context, state) => const RecordsScreen(),
        ),
      ],
    ),
    ShellRoute(
      builder: (context, state, child) => CleanScaffold(child: child),
      routes: [
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: '/mood',
          builder: (context, state) => const MoodItemScreen(),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Mood Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}


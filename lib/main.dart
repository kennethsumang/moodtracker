import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moodtracker/views/layout/app_scaffold.dart';
import 'package:moodtracker/views/layout/create_record_scaffold.dart';
import 'package:moodtracker/views/layout/view_record_scaffold.dart';
import 'package:moodtracker/views/screens/create_record_screen.dart';
import 'package:moodtracker/views/screens/home_screen.dart';
import 'package:moodtracker/views/screens/records_screen.dart';
import 'package:moodtracker/views/screens/settings_screen.dart';
import 'package:moodtracker/views/screens/view_record_screen.dart';

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
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
    ShellRoute(
      builder: (context, state, child) => CreateRecordScaffold(child: child),
      routes: [
        GoRoute(
          path: '/mood',
          builder: (context, state) => const CreateRecordScreen(),
        ),
      ],
    ),
    ShellRoute(
      builder: (context, state, child) => ViewRecordScaffold(child: child),
      routes: [
        GoRoute(
          path: '/mood/:id',
          builder: (context, state) => const ViewRecordScreen(),
        )
      ]
    )
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


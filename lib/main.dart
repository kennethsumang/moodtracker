import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moodtracker/views/layout/app_scaffold.dart';
import 'package:moodtracker/views/layout/auth_scaffold.dart';
import 'package:moodtracker/views/screens/auth/login_screen.dart';
import 'package:moodtracker/views/screens/auth/register_screen.dart';
import 'package:moodtracker/views/screens/home_screen.dart';
import 'package:moodtracker/views/screens/records_screen.dart';
import 'package:moodtracker/views/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => AuthScaffold(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/auth/register',
          builder: (context, state) => const RegisterScreen(),
        )
      ]
    ),
    ShellRoute(
      builder: (context, state, child) => AppScaffold(child: child),
      routes: [
        GoRoute(
          path: '/app',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/app/records',
          builder: (context, state) => const RecordsScreen(),
        ),
        GoRoute(
          path: '/app/settings',
          builder: (context, state) => const SettingsScreen(),
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


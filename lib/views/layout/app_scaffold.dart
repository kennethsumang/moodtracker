import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bottom_navbar.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({super.key, required this.child });

  @override
  Widget build(BuildContext context) {
    String location = GoRouter.of(context).routerDelegate.currentConfiguration.last.matchedLocation;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Mood Tracker"),
        ),
        body: Center(
            child: child
        ),
        floatingActionButton: location == '/settings' ? Container() : FloatingActionButton(
          tooltip: 'New Record',
          child: const Icon(Icons.add),
          onPressed: () {
            GoRouter.of(context).push('/mood');
          },
        ),
        bottomNavigationBar: const BottomNavbar()
    );
  }
}
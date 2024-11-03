import 'package:flutter/material.dart';

class CreateRecordScaffold extends StatelessWidget {
  final Widget child;
  const CreateRecordScaffold({super.key, required this.child });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Create New Record"),
        ),
        body: Center(
            child: child
        ),
    );
  }
}
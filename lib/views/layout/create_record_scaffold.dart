import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateRecordScaffold extends StatelessWidget {
  final Widget child;
  const CreateRecordScaffold({super.key, required this.child });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: BackButton(onPressed: () => GoRouter.of(context)..pop()),
        ),
        body: Center(
            child: child
        ),
    );
  }
}
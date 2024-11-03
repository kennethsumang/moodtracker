import 'package:flutter/material.dart';

class ViewRecordScaffold extends StatelessWidget {
  final Widget child;
  const ViewRecordScaffold({super.key, required this.child });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: BackButton(onPressed: () => Navigator.of(context).pop()),
      ),
      body: Center(
          child: child
      ),
    );
  }
}
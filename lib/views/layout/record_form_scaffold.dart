import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class RecordFormScaffold extends StatelessWidget {
  final Widget child;
  const RecordFormScaffold({super.key, required this.child });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: BackButton(onPressed: () => GoRouter.of(context).pop()),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: 'Record successfully saved.',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.green,
                textColor: Colors.white,
              );
            },
            child: const Icon(Icons.save),
          )
        ]
      ),
      body: Center(
          child: child
      ),
    );
  }
}
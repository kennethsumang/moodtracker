import 'package:flutter/material.dart';

import '../widgets/bottom_navbar.dart';

class RecordsScreen extends StatelessWidget {
  const RecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Hello, Records page!"),
      ],
    );
  }
}

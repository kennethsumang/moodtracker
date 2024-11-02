import 'package:flutter/material.dart';
import 'package:moodtracker/views/widgets/records_list.dart';

class RecordsScreen extends StatelessWidget {
  const RecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: RecordsList(),
        ),
      ],
    );
  }
}

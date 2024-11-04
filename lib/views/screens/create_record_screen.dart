import 'package:flutter/material.dart';
import 'package:moodtracker/views/widgets/record_form.dart';

class CreateRecordScreen extends StatelessWidget {
  const CreateRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RecordForm(initialData: null)
      ],
    );
  }
}
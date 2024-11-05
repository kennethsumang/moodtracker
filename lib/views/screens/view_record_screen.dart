import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moodtracker/repositories/mood_repository.dart';
import 'package:moodtracker/views/widgets/record_form.dart';
import '../../models/mood_model.dart';

class ViewRecordScreen extends StatefulWidget {
  const ViewRecordScreen({super.key});

  @override
  _ViewRecordScreenState createState() => _ViewRecordScreenState();
}

class _ViewRecordScreenState extends State<ViewRecordScreen> {
  late Future<Mood?> _moodData;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    List<String> pathSegments = GoRouterState.of(context).uri.pathSegments;
    _moodData = MoodRepository().getMoodById(pathSegments[1]);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Mood?>(
      future: _moodData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData) {
          return const Center(child: Text('Invalid record.'));
        }

        final moodData = snapshot.data!;
        return RecordForm(initialData: moodData);
      },
    );
  }
}
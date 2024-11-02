import 'package:flutter/material.dart';

import '../../models/mood_model.dart';
import '../../repositories/mood_repository.dart';

class RecordsList extends StatefulWidget {
  const RecordsList({super.key});

  @override
  _RecordsListState createState() => _RecordsListState();
}

class _RecordsListState extends State<RecordsList> {
  late Future<List<Mood>> _moods;

  @override
  void initState() {
    super.initState();
    _moods = MoodRepository().getMoods();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Mood>>(
      future: _moods,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No records available'));
        } else {
          final moods = snapshot.data!;
          return ListView.builder(
            itemCount: moods.length,
            itemBuilder: (context, index) {
              final mood = moods[index];
              return ListTile(
                title: Text('Mood Level: ${mood.level}'),
                subtitle: Text(
                  '${mood.content}\nDate: ${mood.dateTime.toLocal()}',
                  style: TextStyle(fontSize: 14),
                ),
                isThreeLine: true,
              );
            },
          );
        }
      },
    );
  }
}
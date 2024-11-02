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
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No records available'));
        } else {
          final moods = snapshot.data!;
          return ListView.separated(
            itemCount: moods.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final mood = moods[index];
              return ListTile(
                // leading: Icon(Icons.),
                title: Text(
                  mood.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      mood.content,
                      maxLines: 2,
                    ),
                    Text(
                      mood.dateTime.toLocal().toString(),
                      style: const TextStyle(
                        fontSize: 12
                      )
                    ),
                  ],
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
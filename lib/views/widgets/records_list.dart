import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moodtracker/views/notifiers/record_list_notifier.dart';
import 'package:provider/provider.dart';

class RecordsList extends StatefulWidget {
  const RecordsList({super.key});

  @override
  _RecordsListState createState() => _RecordsListState();
}

class _RecordsListState extends State<RecordsList> {
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      Provider.of<RecordListNotifier>(context, listen: false).fetchMoods();
      _isInitialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RecordListNotifier>(
      builder: (context, dataProvider, child) {
        if (dataProvider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (dataProvider.data.isEmpty) {
          return const Center(child: Text("No records available."));
        } else {
          return ListView.separated(
            itemCount: dataProvider.data.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final mood = dataProvider.data[index];
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
                onTap: () => {
                  GoRouter.of(context).push('/mood/${mood.id}')
                },
              );
            },
          );
        }
      },
    );
  }
}
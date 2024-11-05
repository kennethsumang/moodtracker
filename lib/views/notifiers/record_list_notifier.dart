import 'package:flutter/material.dart';
import 'package:moodtracker/models/mood_model.dart';
import 'package:moodtracker/repositories/mood_repository.dart';

class RecordListNotifier extends ChangeNotifier {
  List<Mood> records = [];
  bool _isLoading = false;

  List<Mood> get data => records;
  bool get isLoading => _isLoading;

  Future<void> fetchMoods() async {
    _isLoading = true;
    notifyListeners();

    records = await MoodRepository().getMoods();
    _isLoading = false;
    notifyListeners();
  }
}
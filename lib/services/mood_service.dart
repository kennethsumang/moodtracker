import 'package:moodtracker/repositories/mood_repository.dart';
import '../models/mood_model.dart';

class MoodService {
  late MoodRepository moodRepository;

  MoodService() {
    moodRepository = MoodRepository();
  }

  Future<List<Mood>> getMoods() async {
    return moodRepository.getMoods();
  }

  Future<Mood?> getMoodById(String id) async {
    return moodRepository.getMoodById(id);
  }
}
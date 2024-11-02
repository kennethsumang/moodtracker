import '../models/mood_model.dart';

class MoodRepository {
  Future<List<Mood>> getMoods() async {
    // Simulate a delay to mock a network or database call
    await Future.delayed(const Duration(seconds: 1));

    // Return a list of sample Mood entries
    return [
      Mood(
        id: '7b25e68e-75f2-4a6e-9383-f51521eaf528',
        dateTime: DateTime.parse('2024-11-01 08:00:00'),
        level: 7,
        content: 'Feeling pretty good today, had a productive morning.',
        createdAt: DateTime.parse('2024-11-01 08:05:00'),
      ),
      Mood(
        id: '5c6fd755-334d-4e50-91f5-8245b4a0b8de',
        dateTime: DateTime.parse('2024-11-01 12:00:00'),
        level: 5,
        content: 'Midday energy is a bit low, but getting through tasks.',
        createdAt: DateTime.parse('2024-11-01 12:05:00'),
      ),
      Mood(
        id: '94e8d95c-fd3d-4c30-9f7e-4d6d7eae0b89',
        dateTime: DateTime.parse('2024-11-01 18:30:00'),
        level: 8,
        content: 'Had a great evening walk, feeling refreshed.',
        createdAt: DateTime.parse('2024-11-01 18:35:00'),
      ),
      Mood(
        id: 'bfe1c70f-52a7-44b8-9b27-bd7f5b1e3f9d',
        dateTime: DateTime.parse('2024-11-02 07:30:00'),
        level: 6,
        content: 'A bit tired but ready for the day.',
        createdAt: DateTime.parse('2024-11-02 07:35:00'),
      ),
      Mood(
        id: '1b50a4b4-4b2f-47c3-8c3c-6fa4413b60a5',
        dateTime: DateTime.parse('2024-11-02 13:00:00'),
        level: 9,
        content: 'Had a productive brainstorming session at work!',
        createdAt: DateTime.parse('2024-11-02 13:05:00'),
      ),
      Mood(
        id: 'cc52e178-5d5f-411b-8a7e-f0e1ad561b64',
        dateTime: DateTime.parse('2024-11-02 20:00:00'),
        level: 7,
        content: 'Enjoyed a nice dinner and relaxed in the evening.',
        createdAt: DateTime.parse('2024-11-02 20:05:00'),
      ),
      Mood(
        id: 'c9843012-43ab-4f96-bb97-d6c6b02cf735',
        dateTime: DateTime.parse('2024-11-03 09:00:00'),
        level: 6,
        content: 'Quiet morning, just reading and relaxing.',
        createdAt: DateTime.parse('2024-11-03 09:05:00'),
      ),
      Mood(
        id: '6b2364e4-1b1a-4f38-9e06-3b4a03e9c991',
        dateTime: DateTime.parse('2024-11-03 15:00:00'),
        level: 8,
        content: 'Had a great afternoon out with friends.',
        createdAt: DateTime.parse('2024-11-03 15:05:00'),
      ),
      Mood(
        id: 'd2f9a98f-f09b-4e5b-8bc4-73593d2f36f3',
        dateTime: DateTime.parse('2024-11-03 22:00:00'),
        level: 5,
        content: 'Feeling a bit tired, but it was a good day.',
        createdAt: DateTime.parse('2024-11-03 22:05:00'),
      ),
      Mood(
        id: '87b0e4d2-857e-4bc1-a1f2-7071b5b8a82d',
        dateTime: DateTime.parse('2024-11-04 08:00:00'),
        level: 6,
        content: 'Started the day with some exercise, feeling refreshed.',
        createdAt: DateTime.parse('2024-11-04 08:05:00'),
      ),
      Mood(
        id: 'e9f5e95e-0a7d-4f68-9469-e0e3d4f4f428',
        dateTime: DateTime.parse('2024-11-04 12:30:00'),
        level: 4,
        content: 'Work stress is getting to me a bit today.',
        createdAt: DateTime.parse('2024-11-04 12:35:00'),
      ),
      // Add the rest of the entries up to 25
      // ...
    ];
  }
}
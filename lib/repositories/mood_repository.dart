import 'dart:async';
import 'package:collection/collection.dart';
import '../models/mood_model.dart';

var sampleData = [
  Mood(
    id: '7b25e68e-75f2-4a6e-9383-f51521eaf528',
    dateTime: DateTime.parse('2024-11-01 08:00:00'),
    level: 4,
    title: 'Morning Productivity',
    content: 'Feeling pretty good today, had a productive morning. Lorem ipsum dolor sit amet consectetur alit adespescing elit.',
    createdAt: DateTime.parse('2024-11-01 08:05:00'),
  ),
  Mood(
    id: '2a40d72b-3048-4f82-9e7a-3f6f3c8429df',
    dateTime: DateTime.parse('2024-11-01 12:00:00'),
    level: 3,
    title: 'Afternoon Slump',
    content: 'Energy is a bit low, trying to power through the day.',
    createdAt: DateTime.parse('2024-11-01 12:05:00'),
  ),
  Mood(
    id: 'd1a14b2e-77cd-4d6b-bb9c-9831e34e9f25',
    dateTime: DateTime.parse('2024-11-01 18:00:00'),
    level: 4,
    title: 'Evening Relaxation',
    content: 'Enjoying a calm evening after a long day.',
    createdAt: DateTime.parse('2024-11-01 18:05:00'),
  ),
  Mood(
    id: '1c3fbe9a-dc52-4d18-b5b5-beb7f5f3d629',
    dateTime: DateTime.parse('2024-11-02 09:00:00'),
    level: 3,
    title: 'Mid-Morning Motivation',
    content: 'Starting to feel motivated after a cup of coffee.',
    createdAt: DateTime.parse('2024-11-02 09:05:00'),
  ),
  Mood(
    id: '4f2e8e89-28d1-4f50-bdb6-fbce9278e2e2',
    dateTime: DateTime.parse('2024-11-02 14:00:00'),
    level: 2,
    title: 'Afternoon Fatigue',
    content: 'Feeling tired, but still have tasks to complete.',
    createdAt: DateTime.parse('2024-11-02 14:05:00'),
  ),
  Mood(
    id: 'b7ac85c8-f43a-4663-ae0e-4b73a4f2f2b2',
    dateTime: DateTime.parse('2024-11-02 17:00:00'),
    level: 4,
    title: 'Pre-Dinner Joy',
    content: 'Excited to relax and have dinner soon.',
    createdAt: DateTime.parse('2024-11-02 17:05:00'),
  ),
  Mood(
    id: 'e2f9e0ad-482f-4b95-83ff-4f7a2d8b5c3a',
    dateTime: DateTime.parse('2024-11-02 20:00:00'),
    level: 3,
    title: 'Nightly Reflection',
    content: 'Reflecting on the day, feeling content overall.',
    createdAt: DateTime.parse('2024-11-02 20:05:00'),
  ),
  Mood(
    id: 'de4d7f58-2c5b-4a36-b7b5-cc6e7de38e82',
    dateTime: DateTime.parse('2024-11-03 07:30:00'),
    level: 2,
    title: 'Early Morning Blues',
    content: 'Woke up feeling a bit down, hoping the day improves.',
    createdAt: DateTime.parse('2024-11-03 07:35:00'),
  ),
  Mood(
    id: 'fcdbd3a7-5cf2-4b74-b4c3-fc232a7d9f5b',
    dateTime: DateTime.parse('2024-11-03 15:30:00'),
    level: 3,
    title: 'Afternoon Boost',
    content: 'Got a second wind of energy and productivity.',
    createdAt: DateTime.parse('2024-11-03 15:35:00'),
  ),
  Mood(
    id: '7a8b9f0d-3c8e-414e-9a73-2f1cbd5b9c8d',
    dateTime: DateTime.parse('2024-11-03 21:00:00'),
    level: 5,
    title: 'Nightly Gratitude',
    content: 'Feeling grateful for the good moments today.',
    createdAt: DateTime.parse('2024-11-03 21:05:00'),
  ),
];

class MoodRepository {
  Future<List<Mood>> getMoods() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate a delay
    return sampleData;
  }

  Future<Mood?> getMoodById(String id) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate a delay
    return sampleData.firstWhereOrNull((mood) => mood.id == id);
  }
}
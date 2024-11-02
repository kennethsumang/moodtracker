import 'package:uuid/uuid.dart';

class Mood {
  final String id;
  final DateTime dateTime;
  final int level; // Mood level, e.g., range 1-10
  final String title; // New title attribute
  final String content;
  final DateTime createdAt;
  final DateTime? updatedAt;

  // Constructor with validation for mood level range and UUID generation
  Mood({
    String? id,
    required this.dateTime,
    required this.level,
    required this.title,
    required this.content,
    DateTime? createdAt,
    this.updatedAt,
  })  : assert(level >= 1 && level <= 10, 'Mood level must be between 1 and 10'),
        id = id ?? Uuid().v4(), // Generate UUID if id is null
        createdAt = createdAt ?? DateTime.now();

  // CopyWith method for immutability
  Mood copyWith({
    String? id,
    DateTime? dateTime,
    int? level,
    String? title,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Mood(
      id: id ?? this.id,
      dateTime: dateTime ?? this.dateTime,
      level: level ?? this.level,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  // Convert Mood instance to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'dateTime': dateTime.toIso8601String(),
      'level': level,
      'title': title,
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  // Create a Mood instance from a Map
  factory Mood.fromMap(Map<String, dynamic> map) {
    return Mood(
      id: map['id'],
      dateTime: DateTime.parse(map['dateTime']),
      level: map['level'],
      title: map['title'],
      content: map['content'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }

  @override
  String toString() {
    return 'Mood(id: $id, dateTime: $dateTime, level: $level, title: $title, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
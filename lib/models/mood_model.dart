import 'package:uuid/uuid.dart';

class Mood {
  final String id;
  final DateTime dateTime;
  final int level;  // Assuming mood level ranges from 1-10, you can validate this in the constructor.
  final String content;
  final DateTime createdAt;
  final DateTime? updatedAt;

  // Constructor with validation for mood level range
  Mood({
    String? id,
    required this.dateTime,
    required this.level,
    required this.content,
    DateTime? createdAt,
    this.updatedAt,
  })  : assert(level >= 1 && level <= 10, 'Mood level must be between 1 and 10'),
        id = id ?? Uuid().v4(),  // Generate UUID if id is null
        createdAt = createdAt ?? DateTime.now();

  // CopyWith method for immutability
  Mood copyWith({
    String? id,
    DateTime? dateTime,
    int? level,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Mood(
      id: id ?? this.id,
      dateTime: dateTime ?? this.dateTime,
      level: level ?? this.level,
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
      content: map['content'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: map['updatedAt'] != null ? DateTime.parse(map['updatedAt']) : null,
    );
  }

  @override
  String toString() {
    return 'Mood(id: $id, dateTime: $dateTime, level: $level, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

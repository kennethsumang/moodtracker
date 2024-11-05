import 'package:flutter/material.dart';

class RecordFormProvider extends ChangeNotifier {
  final Map<String, dynamic> _form = {
    'id': null,
    'dateTime': DateTime.now(),
    'level': 5,
    'title': '',
    'content': '',
    'createdAt': DateTime.now(),
    'updatedAt': null,
  };

  Map<String, dynamic> get form => _form;

  void setFormData(String key, dynamic value) {
    _form[key] = value;
  }
}
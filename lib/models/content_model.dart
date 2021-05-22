import 'package:sqflite/sqflite.dart';


class Content {
  int? id;
  String? title;
  String? description;
  String? content;
  int? subject_id;
  String? subject_name;
  bool? state;

  Content({
    this.id,
    required this.content,
    required this.title,
    required this.description,
    required this.subject_id,
    required this.subject_name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'content': content,
      'title': title,
      'subjectId': subject_id,
      'subjectName': subject_name
    };
  }
}



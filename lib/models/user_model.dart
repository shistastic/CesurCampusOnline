
import 'package:sqflite/sqflite.dart';

import 'package:cesurcampusonline/models/database_initializer.dart';

class User {
  int? id;
  String fullName;
  int userId;
  String email;
  String dni;

  User({
    this.id,
    required this.userId,
    required this.email,
    required this.fullName,
    required this.dni
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'email': email,
      'fullName': fullName,
      'dni': dni
    };
  }
}

Future<void> insertUser(User user) async {
  // Get a reference to the database.
  final Database db = await getDataBase();
  // Insert the User into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same User is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'user',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}


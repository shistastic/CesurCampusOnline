import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiEndpoints {
  static const url = '10.0.0.190:8000';
  static const login = 'login/';
  static const addStudent = 'addstudent/';
  static const showCourse = 'showcourses/';


}

Future<String> userLogin(String dni, String password) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.login);
  print(uri);
  var request = await http.post(
    uri,
    body: {'dni': dni, 'password': password},
  );
  print(request.body);
  return request.body;
}


Future<String> addStudent(String fullName, String dni, String email, String password) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.addStudent);
  print(uri);
  var request = await http.post(
    uri,
    body: {'fullname': fullName, 'dni': dni, 'email': email, 'password': password},
  );
  print(request.body);
  return request.body;
}

Future<String> showCourse(String id) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showCourse);
  print(uri);
  var request = await http.post(
    uri,
    body: {'id': id},
  );
  print(request.body);
  return request.body;
}
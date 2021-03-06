import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class ApiEndpoints {
  static const url = '10.0.0.47:8000';
  static const login = 'login/';
  static const addStudent = 'addstudent/';
  static const addTeacher = 'addteacher/';
  static const addCourse = 'addcourse/';
  static const addSubject = 'addsubject/';
  static const showStudentById = 'showstudent/';
  static const showStudentByCourse = 'showstudentcourse/';
  static const showContent = 'showcontent/';
  static const showAllCourse = 'showallcourses/';
  static const showCourse = 'showcourses/';
  static const showCourseYear = 'showcoursesyear/';
  static const showSubject = 'showsubject/';
  static const payCourse = 'paycourse/';
  static const addContent = 'addcontent/';
  static const updateUser = 'updateUser/';
  static const addAssignment = 'addassignment/';
  static const showContentUnit = 'showcontentunit/';
  static const showAssignmentId = 'showcontentAssign/';

}

Future<String> userLogin(String dni, String password) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.login);
  print(uri);
  try {
    var request = await http.post(
      uri,
      body: {'dni': dni, 'password': password},
    ).timeout(Duration(seconds: 3));

    print(request.body);
    return request.body;
  } on TimeoutException catch(_) {
    return 'false';
  }

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

Future<String> addContent(String title, String description, String subject_id, String teacher_id, String subject_name, String state) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.addContent);
  print(uri);
  var request = await http.post(
    uri,
    body: {'title': title, 'description': description, 'subject_id': subject_id, 'teacher_id': teacher_id, 'subject_name': subject_name, 'state': state },
  );
  print(request.body);
  return request.body;
}


Future addAssignment(String title, String contentId) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.addAssignment);
  print(uri);
  var request = await http.post(
    uri,
    body: {'title': title, 'content_id': contentId},
  );
  print(request.body);
  return request.body;
}


Future showContentUnit(String unit, String subjectId) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showContentUnit);
  print(uri);
  var request = await http.post(
    uri,
    body: {'unit': unit, 'subject_name': subjectId},
  );
  print(request.body);
  return request.body;
}

Future showAssignmentId(String id) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showAssignmentId);
  print(uri);
  var request = await http.post(
    uri,
    body: {'content_id': id},
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

Future<String> updateUser(String id, String dni, String fullname, String email) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.updateUser);
  print(uri);
  var request = await http.post(
    uri,
    body: {'id': id, 'dni': dni, 'fullname': fullname, 'email': email},
  );
  print(request.body);
  return request.body;
}

Future<String> showCoursesYear(String year) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showCourseYear);
  print(uri);
  var request = await http.post(
    uri,
    body: {'year': year},
  );
  print(request.body);
  return request.body;
}

Future<String> showAllCourses() async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showAllCourse);
  print(uri);
  var request = await http.post(
    uri
  );
  print("All Courses: ${request.body}");
  return request.body;
}

Future<String> payCourse(String username, String email, String payToken, String amount) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.payCourse);
  print(uri);
  var request = await http.post(
      uri,
      body: {'nickname': username, 'email': email, 'stripeToken': payToken, 'amount': amount},
  );
  print("Payment Code: ${request.body}");
  return request.body;
}


Future<String> showSubject(String id) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showSubject);
  print(uri);
  var request = await http.post(
    uri,
    body: {'course_id': id},
  );
  print(request.body);
  return request.body;
}


Future<String> showContent(String state) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showContent);
  print(uri);
  var request = await http.post(
    uri,
    body: {'state': state},
  );
  print(request.body);
  return request.body;
}

Future showContentPDF(String id) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.showContent+'$id/');
  print(uri);
  var request = await http.post(
    uri
  );
  print(request.body);
  return request.body;
}


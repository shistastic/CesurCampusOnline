import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiEndpoints {
  static const url = '10.0.0.129:8000';
  static const login = 'register';

}

Future userLogin(String dni, String password) async {
  Uri uri = Uri.http(ApiEndpoints.url, ApiEndpoints.login);
  print(uri);
  Map data = {
    'dni': dni,
    'password': password
  };
  print(data);
  var request = await http.post(
    uri,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(data),
  );
  print(jsonDecode(request.body));
  return jsonDecode(request.body);
}
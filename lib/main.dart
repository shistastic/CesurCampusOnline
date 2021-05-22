import 'package:cesurcampusonline/screens/register.dart';
import 'package:cesurcampusonline/screens/student_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:cesurcampusonline/screens/login.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';

void main() {
  //Fixed Portrait Mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //View Routing
  runApp(
    MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/register': (context) => Register(),
      },

    ),


  );

}
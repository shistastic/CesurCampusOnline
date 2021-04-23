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
      initialRoute: '/modulePayment',
      routes: {
        '/login': (context) => Login(),
        '/modulePayment': (context) => ModulePayment(),
      },

    ),


  );

}
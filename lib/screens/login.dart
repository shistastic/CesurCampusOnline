import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

const users = const {
  'admin@admin.com': 'admin',
  'alejandro@alejandro.com': 'tenpiedad',
};

class Login extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);


  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return 'funciona';
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return 'It works';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      logo: 'assets/images/Cesur - Complete Logo.png',
      onLogin: _authUser,
      onSignup: _authUser,
      loginAfterSignUp: true,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ModulePayment(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
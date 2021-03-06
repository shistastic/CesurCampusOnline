import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/data/http_calls.dart';
import 'package:cesurcampusonline/models/user_model.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/screens/register.dart';
import 'package:cesurcampusonline/screens/student_home.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/loading_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// const users = const {
//   'admin@admin.com': 'admin',
//   'alejandro@alejandro.com': 'tenpiedad',
// };

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String? dni;
  String? password;

  @override
  Widget _buildBody(){
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 50),
              child: Container(
                  child: Image.asset('assets/images/Cesur - Complete Logo.png')
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColors.bgLightBlue.withOpacity(0.7),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: CustomColors.bgLightBlue,
                      blurRadius: 10.0,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text('ACCESO AL AULA VIRTUAL',
                        style: TextStyle(
                            color: CustomColors.darkBlue,
                            fontSize: 19,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        onChanged: (value){
                          dni = value;
                          print(dni);
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:  CustomColors.darkBlue,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.only(top: 20),
                          isDense: true,
                          hintText: 'DNI',
                          prefixIcon: Icon(Icons.account_circle,
                            color:  CustomColors.darkBlue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:  CustomColors.darkBlue,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.only(top: 20),
                          isDense: true,
                          hintText: 'Contrase??a',
                          prefixIcon: Icon(Icons.lock,
                            color:  CustomColors.darkBlue,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 25.0, 10, 0.0),
                      child: Center(
                        child: Container(
                          width: 215,
                          height: 40,
                          child: CustomButton(
                            title: Text(
                              'Iniciar Sesi??n',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            onPressed: ()  async {

                              var response = await userLogin(dni!, password!);
                              print('this is response: $response');
                              // await showAllCourses();
                              if(response.startsWith('{')){
                                Map<String, dynamic> jsonResponse = jsonDecode(response);
                                print(jsonResponse['student'][0]['acc_type']);
                                User user = User(
                                    userId: jsonResponse['student'][0]['id'],
                                    email: jsonResponse['student'][0]['email'],
                                    fullName: jsonResponse['student'][0]['fullname'],
                                    dni: jsonResponse['student'][0]['dni'],
                                    accountType: jsonResponse['student'][0]['acc_type'].toString(),
                                    courseId: jsonResponse['student'][0]['course_id']
                                );
                                await insertUser(user);

                                if(user.courseId != -1){
                                  await Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => StudentHome(user)));
                                }
                                else{
                                  await Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ModulePayment(user)));
                                  // Navigator.pushReplacementNamed(context, '/modulePayment');
                                }
                              } else {
                                  Flushbar(
                                    title: "Credenciales Incorrectas",
                                    message: "La combinaci??n usuario/contrase??a introducidos no es correcto.",
                                    mainButton: FlatButton(
                                      color: Colors.white,
                                      onPressed: () async {
                                        await Navigator.of(context).push(MaterialPageRoute(
                                            builder: (_) => Register()));                                                },
                                      child: Text(
                                        "Registrarse",
                                        style: TextStyle(

                                        ),
                                      ),
                                    ),
                                    icon: Icon(Icons.cancel_outlined,
                                      color: Colors.white,
                                    ),
                                    duration: Duration(seconds: 3),
                                  )..show(context);
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 20.0, 0, 20.0),
                      child: Row(
                        children: <Widget>[
                          Text('??No tiene cuenta?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.5,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: ' Reg??strese.',
                                    style: TextStyle(
                                      color: CustomColors.textLightBlue,
                                      fontSize: 16.0,
                                    ),
                                    recognizer: TapGestureRecognizer()..onTap = () {
                                      Navigator.popAndPushNamed(context, '/register');
                                    }
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                              text: '??Ha olvidado su contrase??a?',
                              style: TextStyle(
                                color: CustomColors.textLightBlue,
                                fontSize: 16.0,
                              ),

                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              child: GestureDetector(
                onTap: () async {
                  await launch('https://campusonline.cesurformacion.com/upload/ManualdeUsuario.pdf');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.white70,
                        blurRadius: 10.0,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal:95),
                            child: Image.asset('assets/images/Manual de Uso.png')
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text('MANUAL DE USO',
                            style: TextStyle(
                                color:  CustomColors.darkBlue,
                                fontSize: 19,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:3, horizontal: 20),
                          child: Text('Si tienes dudas sobre el funcionamiento de la plataforma puedes pinchar aqu??.',
                            style: TextStyle(
                                color:  CustomColors.darkGrey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}
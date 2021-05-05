import 'package:cesurcampusonline/data/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// const users = const {
//   'admin@admin.com': 'admin',
//   'alejandro@alejandro.com': 'tenpiedad',
// };

class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget _buildBody(){
    return Container(
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
                          color:  CustomColors.darkBlue,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(

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
                        hintText: 'Email',
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
                        hintText: 'Nombre Completo',
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
                        hintText: 'Contraseña',
                        prefixIcon: Icon(Icons.account_circle,
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
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(CustomColors.darkBlue,
                            ),
                          ),
                          onPressed: ()  async {
                            Navigator.pushReplacementNamed(context, '/login');

                          },
                          child: Text(
                            'Registro',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(45, 20.0, 0, 20.0),
                    child: Row(
                      children: <Widget>[
                        Text('¿Ya tiene cuenta?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.5,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: ' Inicie Sesión.',
                                style: TextStyle(
                                  color: CustomColors.textLightBlue,
                                  fontSize: 16.0,
                                ),
                                  recognizer: TapGestureRecognizer()..onTap = () {
                                    Navigator.popAndPushNamed(context, '/login');
                                  }
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,)
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
                        child: Text('Si tienes dudas sobre el funcionamiento de la plataforma puedes pinchar aquí.',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}
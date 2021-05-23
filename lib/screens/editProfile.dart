
import 'dart:convert';
import 'dart:io';
import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/data/http_calls.dart';
import 'package:cesurcampusonline/models/user_model.dart';
import 'package:cesurcampusonline/screens/student_home.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';

import 'file:///C:/Users/adamj/IntelliJIDEAProjects/CesurCampusOnline/lib/screens/profile.dart';







class EditProfile extends StatefulWidget {

  User user;

  EditProfile(this.user);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {



    @override
    void initState() {
      super.initState();

    }



  @override
  Widget _buildBody(){
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Container(
                child: Image.asset('assets/images/Cesur - Complete Logo.png')
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.bgLightBlue,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10.0,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 35, 30, 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Text('Imagen de Perfil',
                                  style: TextStyle(
                                    color: CustomColors.darkBlue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                FittedBox(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'Formato de archivo\n JPEG, PNG o GIF',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            child: GestureDetector(
                              onTap: () async {
                                print("tapped on container");
                                try{
                                  // await getImage();

                                }catch(e) {
                                  print(e);
                                }
                              },
                              child: Container(
                                child: Icon(
                                  Icons.supervised_user_circle_outlined,
                                  color: Colors.white,
                                  size: 50,
                                    )
                                  ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Container(
                    width: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15.0,),
                        Text('Nombre Completo',
                          style: TextStyle(
                            color: CustomColors.darkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          textAlign: TextAlign.center,
                          // style: TextStyle(
                          //   color: Colors.black,
                          // ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColors.darkGrey,
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
                            // hintText: 'Nombre Completo',
                            // prefixIcon: Icon(Icons.supervised_user_circle,
                            //   color: Color(0xfffca3ce),
                            // ),
                          ),
                          controller: initialValue(widget.user.fullName),
                          onChanged: (value){
                            widget.user.fullName = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15.0,),
                        Text('DNI',
                          style: TextStyle(
                            color: CustomColors.darkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5),
                        TextFormField(
                          textAlign: TextAlign.center,
                          // style: TextStyle(
                          //   color: Colors.black,
                          // ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColors.darkGrey,
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
                            // hintText: 'Nombre Completo',
                            // prefixIcon: Icon(Icons.supervised_user_circle,
                            //   color: Color(0xfffca3ce),
                            // ),
                          ),
                          controller: initialValue(widget.user.dni),
                          onChanged: (value){
                            widget.user.dni = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 250,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15.0,),
                        Text('Email',
                          style: TextStyle(
                            color: CustomColors.darkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5),
                        TextFormField(textAlign: TextAlign.center,
                          // style: TextStyle(
                          //   color: Colors.black,
                          // ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColors.darkGrey,
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
                            // hintText: 'Nombre Completo',
                            // prefixIcon: Icon(Icons.supervised_user_circle,
                            //   color: Color(0xfffca3ce),
                            // ),
                          ),
                          controller: initialValue(widget.user.email),
                          onChanged: (value){
                            widget.user.email = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),

                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(CustomColors.darkBlue),
                    ),
                    onPressed: ()  async {
                      if (true) {
                        print(widget.user.userId);
                        await updateUser(widget.user.userId.toString(), widget.user.dni, widget.user.fullName, widget.user.email );
                        try {
                          User user = User(
                              userId: widget.user.userId,
                              email: widget.user.email,
                              fullName: widget.user.fullName,
                              dni: widget.user.dni,
                              accountType: widget.user.accountType,
                              courseId: widget.user.courseId
                          );
                          await insertUser(user);

                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => MyProfile(user)));
                        }
                        catch(e ){
                          print("Errors: $e");
                        }
                      } else {
                        print("User Id is null");
                        await Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => StudentHome(widget.user)));
                      }

                    },
                    child: Text('Guardar Cambios',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
initialValue(val){
    return TextEditingController(text: val,);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CampusAppBar(
        title: Text("Editar Perfil"),
      ),
      body: _buildBody(),
    );
  }
}
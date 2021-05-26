import 'dart:convert';

import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/models/content_model.dart';
import 'package:cesurcampusonline/models/user_model.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/screens/content.dart';
import 'package:cesurcampusonline/screens/subject.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../data/http_calls.dart';
import '../data/http_calls.dart';
import '../data/http_calls.dart';
import '../data/http_calls.dart';


class AddAssign extends StatefulWidget {

  User user;

  AddAssign(this.user);

  @override
  _AddAssignState createState() => _AddAssignState();
}

class _AddAssignState extends State<AddAssign> {

  var data;

  getContent(String state) async {
    var response = await showContent(state);
    data = jsonDecode(response);
    print(data['content'].length);
    return data;
  }

  var data1;

  getSubject(String id) async {
    var response = await showSubject(id);
    data1 = jsonDecode(response);
    print(data1['subjects'].length);
    return data1;
  }

  String subjectN = "";
  String description = "";
  String title = "";

  @override
  Widget _buildBody(){
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
            child: Container(
                child: Image.asset('assets/images/Cesur - Complete Logo.png')
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.almostWhite.withOpacity(0.7),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: CustomColors.almostWhite,
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
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Column(
                      children: <Widget>[
                        Text('Asignatura',
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
                          onChanged: (value) {
                            subjectN = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 250,
                    child: Column(
                      children: <Widget>[
                        Text('Nombre Tarea',
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
                          onChanged: (value) {
                            title = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 250,
                    child: Column(
                      children: <Widget>[
                        Text('Descripción',
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
                          onChanged: (value) {
                            description = value;
                          },
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(CustomColors.darkBlue),
                          ),
                          onPressed: ()  async {
                              addContent(title, description, '2', '1', subjectN, '1');

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
                ],
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
      drawer: SafeArea(
        child: CampusDrawer(widget.user),
      ),
      appBar: CampusAppBar(),
      body: _buildBody(),
    );
  }
}
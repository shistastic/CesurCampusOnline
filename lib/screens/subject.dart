import 'dart:convert';

import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/data/http_calls.dart';
import 'package:cesurcampusonline/models/content_model.dart';
import 'package:cesurcampusonline/models/user_model.dart';
import 'package:cesurcampusonline/screens/content.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SubjectInfo extends StatefulWidget {

  User user;
  String subjectName;

  SubjectInfo(this.user, this.subjectName);

  @override
  _SubjectInfoState createState() => _SubjectInfoState();
}

class _SubjectInfoState extends State<SubjectInfo> {


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
                color: CustomColors.bgLightBlue.withOpacity(0.7),
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
                  Container(
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Column(
                        children: <Widget>[
                          Text(widget.subjectName,
                            style: TextStyle(
                              color: CustomColors.darkBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Divider(
                            color: CustomColors.barsDarkBlue,
                            thickness: 3,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 110,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text('Duración del Módulo:',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text('150 Horas',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 110,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text('Docente:',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text('Santiago Martín Palomo García',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text('Temporalización:',
                                style: TextStyle(
                                  color: CustomColors.darkGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text('Primer Trimestre:',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(' 01/10/2020\n22/12/2020',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text('Segundo Trimestre:',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(' 01/10/2020\n22/12/2020',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 35),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.bgLightBlue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ExpansionTile(
                title: Text('Unidad 1',
                  style: TextStyle(
                      color: CustomColors.darkBlue,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  FutureBuilder(
                      future: showContentUnit('Unidad 1', widget.subjectName),
                      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                        if (!snapshot.hasData && snapshot.data == null) {
                          return Container();
                        } else {
                          var data = jsonDecode(snapshot.data);
                          print('my data ${data['content']}');
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: data['content'].length,
                            itemBuilder: (BuildContext ctxt, int index) {

                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.white60,
                                        blurRadius: 10.0,
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ],
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(data['content'][index]['title'],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            Icon(Icons.circle,
                                              color: Colors.green,),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                        child: Divider(thickness: 3,
                                          color: CustomColors.barsDarkBlue,),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Asignatura: ',
                                            style: TextStyle(
                                                color: CustomColors.darkBlue,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(data['content'][index]['subject_name'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 15.0, 10, 10.0),
                                        child: Center(
                                          child: Container(
                                            width: 160,
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(CustomColors.darkBlue,
                                                ),
                                              ),
                                              onPressed: ()  async {
                                                Content content = Content(
                                                  id: 1,
                                                  content: data['content'][index]['content'],
                                                  title: data['content'][index]['title'],
                                                  description: data['content'][index]['description'],
                                                  subject_id: data['content'][index]['subject_id'],
                                                  subject_name: data['content'][index]['subject_name'],
                                                  state: data['content'][index]['state'],
                                                  date_end: data['content'][index]['date_end'],
                                                );
                                                print(content.id);
                                                print(content.content);
                                                print(content.title);
                                                print(content.subject_id);
                                                print(content.subject_name);
                                                print(content.state);
                                                print(content.date_end);
                                                await Navigator.of(context).push(MaterialPageRoute(
                                                    builder: (_) => UserContent(widget.user, content)));
                                              },
                                              child: Text(
                                                'Ver Tarea',
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
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      }
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.bgLightBlue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: ExpansionTile(
                title: Text('Unidad 2',
                  style: TextStyle(
                      color: CustomColors.darkBlue,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.left,
                ),
                children: [
                  FutureBuilder(
                      future: showContentUnit('Unidad 2', widget.subjectName),
                      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                        if (!snapshot.hasData && snapshot.data == null) {
                          return Container();
                        } else {
                          var data = jsonDecode(snapshot.data);
                          print('my data ${data['content']}');
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: data['content'].length,
                            itemBuilder: (BuildContext ctxt, int index) {

                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.white60,
                                        blurRadius: 10.0,
                                        offset: Offset(1.0, 1.0),
                                      ),
                                    ],
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(data['content'][index]['title'],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            Icon(Icons.circle,
                                              color: Colors.green,),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                                        child: Divider(thickness: 3,
                                          color: CustomColors.barsDarkBlue,),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Asignatura: ',
                                            style: TextStyle(
                                                color: CustomColors.darkBlue,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          Text(data['content'][index]['subject_name'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10, 15.0, 10, 10.0),
                                        child: Center(
                                          child: Container(
                                            width: 160,
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(CustomColors.darkBlue,
                                                ),
                                              ),
                                              onPressed: ()  async {
                                                Content content = Content(
                                                  id: 1,
                                                  content: snapshot.data['content'][index]['content'],
                                                  title: snapshot.data['content'][index]['title'],
                                                  description: snapshot.data['content'][index]['description'],
                                                  subject_id: snapshot.data['content'][index]['subject_id'],
                                                  subject_name: snapshot.data['content'][index]['subject_name'],
                                                  state: snapshot.data['content'][index]['state'],
                                                  date_end: snapshot.data['content'][index]['date_end'],
                                                );
                                                print(content.id);
                                                print(content.content);
                                                print(content.title);
                                                print(content.subject_id);
                                                print(content.subject_name);
                                                print(content.state);
                                                print(content.date_end);
                                                await Navigator.of(context).push(MaterialPageRoute(
                                                    builder: (_) => UserContent(widget.user, content)));
                                              },
                                              child: Text(
                                                'Ver Tarea',
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
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      }
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
      appBar: CampusAppBar(),
      body: _buildBody(),
    );
  }
}
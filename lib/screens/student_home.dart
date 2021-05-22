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


class StudentHome extends StatefulWidget {

  User user;

  StudentHome(this.user);

  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {

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
                      child: ExpansionTile(
                        title: Text('Tareas Pendientes',
                          style: TextStyle(
                              color: CustomColors.darkBlue,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: [
                          FutureBuilder(
                              future: getContent('0'),
                              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                                if (!snapshot.hasData && snapshot.data == null || data['content'].length == 0) {
                                  return Container();
                                } else {
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
                                                        );
                                                        print(content.id);
                                                        print(content.content);
                                                        print(content.title);
                                                        print(content.subject_id);
                                                        print(content.subject_name);
                                                        print(content.state);
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
                          SizedBox(height: 15,),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: ExpansionTile(
                        title: Text('Asignaturas',
                          style: TextStyle(
                              color: CustomColors.darkBlue,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: [
                          FutureBuilder(
                              future: getSubject('1'),
                              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                                if (!snapshot.hasData && snapshot.data == null || data1['subjects'].length == 0) {
                                  return Container();
                                } else {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: data1['subjects'].length,
                                    itemBuilder: (BuildContext ctxt, int index) {
                                      return GestureDetector(
                                        onTap: () async {
                                          await Navigator.of(context).push(MaterialPageRoute(
                                              builder: (_) => SubjectInfo(widget.user)));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                          child: Container(
                                            width: double.maxFinite,
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
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(vertical: 15),
                                              child: Column(
                                                children: [
                                                  Text(data1['subjects'][index]['name'],
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }
                              }
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
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
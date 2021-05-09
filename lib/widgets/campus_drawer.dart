import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/screens/content.dart';
import 'package:cesurcampusonline/screens/student_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampusDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/Cesur-CompleteLogo.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ), child: null,
                  ),
                  ListTile(
                      leading: Icon(Icons.account_box,
                      color: Colors.black,
                      ),
                      title: Text('Mi Perfil'),
                      onTap: (){

                      }
                  ),
                  ListTile(
                      leading: Icon(Icons.book,
                        color: Colors.black,
                      ),
                      title: Text('General'),
                      onTap: () async {
                        await Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => StudentHome()));
                      }
                  ),
                  ListTile(
                    leading: Icon(Icons.question_answer,
                      color: Colors.black,
                    ),
                      title: Text('Chat'),
                      onTap: (){

                      }
                  ),
                ],
              ),
            ),
            Container(
              // Moves Widgets to the bottom of the drawer
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  child: Column(
                    children: <Widget>[

                      Container(
                        decoration: BoxDecoration(
                          color: CustomColors.red,
                        ),
                        child: ListTile(
                          leading: Icon(Icons.logout, color: Colors.white,),
                          title: Text('Cerrar Sesión',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/login');

                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

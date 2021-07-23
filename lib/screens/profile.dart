import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/models/user_model.dart';
import 'package:cesurcampusonline/screens/editProfile.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class MyProfile extends StatefulWidget {

  User user;

  MyProfile(this.user);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {


  @override
  Widget _buildBody(){
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Container(
                child: Image.asset('assets/images/Cesur - Complete Logo.png')
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0,20, 15),
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
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child:  Container(
                                    child:Icon(
                                      Icons.supervised_user_circle_outlined,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(widget.user.fullName,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.of(context).push(MaterialPageRoute(
                                        builder: (_) => EditProfile(widget.user)));                                },
                                  child: Container(
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                  Container(
                    width: double.maxFinite,
                    child: Column(
                      children: <Widget>[
                        Text('Nombre Completo',
                          style: TextStyle(
                            color: CustomColors.darkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 7),
                        Text(widget.user.fullName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.maxFinite,
                    child: Column(
                      children: <Widget>[
                        Text('DNI',
                          style: TextStyle(
                            color:CustomColors.darkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5),
                        Text(widget.user.dni,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.maxFinite,
                    child: Column(
                      children: <Widget>[
                        Text('Email',
                          style: TextStyle(
                            color: CustomColors.darkBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5),
                        Text(widget.user.email,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: CampusDrawer(widget.user),
      ),
      appBar: CampusAppBar(
        title: Text("Mi Perfil"),
      ),
      body: _buildBody(),
    );
  }
}
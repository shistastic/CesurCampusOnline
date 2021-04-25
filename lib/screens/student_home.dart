import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:url_launcher/url_launcher.dart';

// const users = const {
//   'admin@admin.com': 'admin',
//   'alejandro@alejandro.com': 'tenpiedad',
// };

class StudentHome extends StatefulWidget {

  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
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
                color: Color(0xffd7e1fa).withOpacity(0.7),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xffd7e1fa),
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
                        title: Text('Tarjeta De Crédito',
                          style: TextStyle(
                              color: Color(0xff2f30a1),
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Unidad 1 Tarea 1',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),),
                                      Icon(Icons.circle,
                                      color: Colors.green,),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                    child: Divider(thickness: 3,
                                    color: Color(0xff17267a),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Unidad 1 Tarea 1',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),),
                                      Icon(Icons.circle,
                                        color: Colors.green,),
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
        child: CampusDrawer(),
      ),
      appBar: CampusAppBar(),
      body: _buildBody(),
    );
  }
}
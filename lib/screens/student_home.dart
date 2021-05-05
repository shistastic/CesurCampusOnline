import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


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
                          Padding(
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
                                        Text('Unidad 1 Tarea 1',
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
                                      Text('Bases De Datos',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
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
                          ),
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
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Unidad 1 Tarea 2',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),),
                                        Icon(Icons.circle,
                                          color: Colors.green,),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                    child: Divider(thickness: 3,
                                      color: CustomColors.darkBlue,),
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
                                      Text('Sistemas\nInformáticos',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
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
                          ),
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
                          Padding(
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
                                    Text('Bases De Datos',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
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
                                    Text('Sistemas Informáticos',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),),
                                  ],
                                ),
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
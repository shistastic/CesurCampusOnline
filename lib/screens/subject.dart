import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SubjectInfo extends StatefulWidget {

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
                          Text('Bases De Datos',
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
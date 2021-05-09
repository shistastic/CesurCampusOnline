import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class UserContent extends StatefulWidget {

  @override
  _UserContentState createState() => _UserContentState();
}

class _UserContentState extends State<UserContent> {
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
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Unidad 1 Tarea 1',
                              style: TextStyle(
                                color: CustomColors.darkGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Descarga el siguiente archivo y contesta a cada una de las cuestiones.',
                              style: TextStyle(
                                color: CustomColors.darkGrey,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10.0, 10, 0.0),
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

                                  },
                                  child: Text('Descargar Tarea',
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
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Estado Entrega',
                                    style: TextStyle(
                                      color: CustomColors.darkBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Enviado',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: CustomColors.barsDarkBlue,
                            thickness: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Estado Calificación',
                                    style: TextStyle(
                                      color: CustomColors.darkBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Calificado',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: CustomColors.barsDarkBlue,
                            thickness: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Fecha Entrega',
                                    style: TextStyle(
                                      color: CustomColors.darkBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Enviado',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: CustomColors.barsDarkBlue,
                            thickness: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Ultima Modificación',
                                    style: TextStyle(
                                      color: CustomColors.darkBlue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Container(
                                  width: 110,
                                  child: Text('Rowe_Adam_BD_UD1_T1.pdf',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: CustomColors.barsDarkBlue,
                            thickness: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10.0, 10, 0.0),
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

                                  },
                                  child: Text('Agregar Tarea',
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
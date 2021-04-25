import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:flutter/material.dart';
// import 'package:stripe_payment/stripe_payment.dart';

class ModulePayment extends StatefulWidget {
  @override
  _ModulePaymentState createState() => _ModulePaymentState();
}

class _ModulePaymentState extends State<ModulePayment> {

  int selectedYear = 0;
  int selectedCourse = 0;
  int selectedModal = 0;

  double total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical:20),
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/Cesur - Complete Logo.png')
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Container(
                color: Color(0xffd7e1fa),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text('Curso',
                        style: TextStyle(
                          color:  Color(0xff2f30a1),
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(selectedYear == 1 ?
                            Colors.redAccent : Color(0xff256be6)),
                          ),
                            onPressed: () {
                              setState(() {
                                selectedYear = 1;
                              });
                              }, child: Text('Primero'),
                            ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(selectedYear == 2 ?
                            Colors.redAccent : Color(0xff256be6) ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedYear = 2;
                            });
                          }, child: Text('Segundo'),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text('Grado',
                          style: TextStyle(
                              color:  Color(0xff2f30a1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(selectedCourse == 1 ?
                            Colors.redAccent : Color(0xff256be6) ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedCourse = 1;
                            });
                          }, child: Text('Desarrollo de Aplicaciones Multiplataforma',
                            style: TextStyle(
                            ),
                          textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 13,),
                      Container(
                        width: double.maxFinite,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(selectedCourse == 2 ?
                            Colors.redAccent : Color(0xff256be6) ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedCourse = 2;
                            });
                          }, child: Text('Desarrollo de Aplicaciones Web',
                          textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7),
                        child: Text('Modalidad',
                          style: TextStyle(
                              color:  Color(0xff2f30a1),
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(selectedModal == 1 ?
                            Colors.redAccent : Color(0xff256be6) ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedModal = 1;
                            });
                          },
                          child: Text('Presencial',
                          textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(selectedModal == 2 ?
                            Colors.redAccent : Color(0xff256be6) ),
                          ),
                          onPressed: () {
                            setState(() {
                              selectedModal = 2;
                            });
                          },
                          child: Text('Online/A Distancia',
                          textAlign: TextAlign.center,),
                        ),
                      ),
                      selectedModal != 0 && selectedCourse != 0 && selectedYear != 0 ?
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Container(
                          height: 50,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('A Pagar:',
                              style: TextStyle(
                                color: Color(0xff2f30a1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('1.490,00€',
                                style: TextStyle(
                                    fontSize: 16
                                ),
                              ),
                            ],
                          ),
                        ),
                      ) : SizedBox(height: 15,),
                      Divider(
                        color: Colors.white,
                        thickness: 3,
                      ),
                      SizedBox(height: 15,),
                      Text('Métodos De Pago',
                        style: TextStyle(
                            color:  Color(0xff2f30a1),
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
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
                            SizedBox(height: 10,),
                            Container(
                              height: 50,
                              margin: EdgeInsets.all(
                                10.0,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  TextFormField(
                                    keyboardType: TextInputType.numberWithOptions(
                                      signed: false,
                                      decimal: false,
                                    ),
                                    onChanged: (value){

                                    },
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.lightBlue,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.lightBlue,
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
                                      hintText: 'Número Tarjeta',
                                      prefixIcon: Icon(Icons.credit_card,
                                        color: Colors.lightBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.all(
                                  10.0,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    TextFormField(
                                      keyboardType: TextInputType.numberWithOptions(
                                        signed: false,
                                        decimal: false,
                                      ),
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.lightBlue,
                                            width: 1.5,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.lightBlue,
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
                                        hintText: 'CVV',
                                        prefixIcon: Icon(Icons.code,
                                          color: Colors.lightBlue,
                                        ),
                                      ),
                                      // controller: this.controller,
                                      onChanged: (value){
                                        // cvc = value;
                                      },
                                      // validator: this.validator,
                                      obscureText: false,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Center(
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.all(
                                  10.0,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.lightBlue,
                                            width: 1.5,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.lightBlue,
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
                                        hintText: 'Fecha Caducidad',
                                        prefixIcon: Icon(Icons.date_range,
                                          color: Colors.lightBlue,
                                        ),
                                      ),
                                      keyboardType:
                                      TextInputType.numberWithOptions(signed: false, decimal: false),
                                      // controller: dateController,
                                      // decoration: widget.decoration,
                                      onChanged: (value) {
                                        setState(() {
                                          value = value.replaceAll(RegExp(r"\D"), "");
                                          switch (value.length) {
                                            case 0:
                                              // dateController.text = "MM/YY";
                                              // dateController.selection = TextSelection.collapsed(offset: 0);
                                              break;
                                            case 1:
                                              // dateController.text = "${value}M/YY";
                                              // dateController.selection = TextSelection.collapsed(offset: 1);
                                              break;
                                            case 2:
                                              // dateController.text = "$value/YY";
                                              // dateController.selection = TextSelection.collapsed(offset: 2);
                                              // expMonth = int.parse(value.substring(0,2));
                                              // print(expMonth);
                                              break;
                                            case 3:
                                              // dateController.text =
                                              // "${value.substring(0, 2)}/${value.substring(2)}Y";
                                              // dateController.selection = TextSelection.collapsed(offset: 4);
                                              break;
                                            case 4:
                                              // dateController.text =
                                              // "${value.substring(0, 2)}/${value.substring(2, 4)}";
                                              // dateController.selection = TextSelection.collapsed(offset: 5);
                                              // expYear = int.parse(value.substring(2,4));
                                              // print(expYear);

                                              break;
                                          }
                                          if (value.length > 4) {
                                            // dateController.text =
                                            // "${value.substring(0, 2)}/${value.substring(2, 4)}";
                                            // dateController.selection = TextSelection.collapsed(offset: 5);

                                          }
                                        });
                                      },
                                      cursorWidth: 0.0,
                                      obscureText: false,
                                      // enabled: enabled,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            selectedModal != 0 && selectedCourse != 0 && selectedYear != 0 ?
                            Text('Total: $total€',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ) : SizedBox(height: 0,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0.0, 0, 7.0),
                              child: Center(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(true ?
                                    Color(0xff256be6) : Color(0xfffca3ce)),
                                  ),
                                  onPressed: () async {
                                    Navigator.pushReplacementNamed(context, '/studentHome');
                                  },
                                  child: Text(
                                    false ? 'Procesando...' : 'Pagar con Tarjeta',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

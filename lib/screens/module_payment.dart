import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:flutter/material.dart';
// import 'package:stripe_payment/stripe_payment.dart';

class ModulePayment extends StatefulWidget {
  @override
  _ModulePaymentState createState() => _ModulePaymentState();
}

class _ModulePaymentState extends State<ModulePayment> {

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
                      Text('Curso'),
                      ElevatedButton(
                          onPressed: () {

                            }, child: Text('Primero'),
                          ),
                      ElevatedButton(
                        onPressed: () {

                        }, child: Text('Segundo'),
                      ),
                      SizedBox(height: 15,),

                      Text('Grado'),
                      ElevatedButton(
                        onPressed: () {

                        }, child: Text('Desarrollo de Aplicaciones Multiplataforma'),
                      ),
                      ElevatedButton(
                        onPressed: () {

                        }, child: Text('Desarrollo de Aplicaciones Web'),
                      ),
                      SizedBox(height: 15,),
                      Text('Modalidad'),
                      ElevatedButton(
                        onPressed: () {

                        }, child: Text('Presencial'),
                      ),
                      ElevatedButton(
                        onPressed: () {

                        }, child: Text('Online/A Distancia'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Container(
                          height: 50,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('A Pagar:'),
                              Text('1.490,00€')
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 3,
                      ),
                      SizedBox(height: 15,),
                      Text('Métodos De Pago'),
                      SizedBox(height: 15,),
                      Container(
                        color: Color(0xffffffff),
                        child: ExpansionTile(
                          title: Text('Tarjeta De Crédito'),
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
                                          color: Color(0xfffca3ce),
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
                                      hintText: 'Número Tarjeta',
                                      prefixIcon: Icon(Icons.credit_card,
                                        color: Color(0xfffca3ce),
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
                                            color: Color(0xfffca3ce),
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
                                        hintText: 'CVV',
                                        prefixIcon: Icon(Icons.code,
                                          color: Color(0xfffca3ce),
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
                                            color: Color(0xfffca3ce),
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
                                        hintText: 'Fecha Caducidad',
                                        prefixIcon: Icon(Icons.date_range,
                                          color: Color(0xfffca3ce),
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
                            Text('Total: '
                                // '$total€'
                              ,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 13.0, 0, 0.0),
                              child: Center(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(true ?
                                    Color(0xff949494) : Color(0xfffca3ce)),
                                  ),
                                  onPressed: () async => print('dasf'),

                                  child: Text(
                                    true ? 'Procesando...' : 'Pagar con Tarjeta',
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

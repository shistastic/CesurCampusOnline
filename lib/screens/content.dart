import 'dart:convert';
import 'dart:io';

import 'package:android_external_storage/android_external_storage.dart';
import 'package:cesurcampusonline/data/constants.dart';
import 'package:cesurcampusonline/data/http_calls.dart';
import 'package:cesurcampusonline/models/content_model.dart';
import 'package:cesurcampusonline/models/user_model.dart';
import 'package:cesurcampusonline/screens/module_payment.dart';
import 'package:cesurcampusonline/widgets/appBar.dart';
import 'package:cesurcampusonline/widgets/campus_drawer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart';


class UserContent extends StatefulWidget {

  User user;
  Content content;

  UserContent(this.user, this.content);

  @override
  _UserContentState createState() => _UserContentState();
}

class _UserContentState extends State<UserContent> {

  Future<String> downloadFile(String url, String dir) async {
    HttpClient httpClient = new HttpClient();
    File file;
    String filePath = '';
    String myUrl = '';
    try {
      myUrl = url;
      var request = await httpClient.getUrl(Uri.parse(myUrl));
      var response = await request.close();
      if (response.statusCode == 200) {
        var bytes = await consolidateHttpClientResponseBytes(response);
        filePath = '$dir/${widget.content.content.toString()}';
        file = File(filePath);
        await file.writeAsBytes(bytes);
        await OpenFile.open(filePath);
        print('file downloaded');
      }
      else
        filePath = 'Error code: ' + response.statusCode.toString();
    }
    catch (ex) {
      filePath = 'Can not fetch url';
    }
    return filePath;
  }

  uploadAssignment() async {
    FilePickerResult result = (await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf']
    ))!;

    if(result != null) {
      File file = File(result.files.single.path!);
      await addAssignment('blabla', widget.content.id.toString());
    } else {

    }
  }

  bool isUpload = false;


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
                          Text(widget.content.subject_name!,
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
                            child: Text(widget.content.title!,
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
                            child: Text(widget.content.description!,
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
                                    await downloadFile('http://10.0.0.47:8000/showcontent/3', '/storage/emulated/0/Download/');
                                    // await showContentPDF(widget.content.id!.toString());

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
                                  child: isUpload ? Text('Entregado',
                                    style: TextStyle(
                                      color: CustomColors.darkGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ) : Text('No Entregado',
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
                                  child: Text(widget.content.date_end!,
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
                                  child: FutureBuilder(
                                    future: showAssignmentId(widget.content.id.toString()),
                                    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
                                      if(!snapshot.hasData && snapshot.data == null){
                                        return  Text('No Entregado',
                                          style: TextStyle(
                                            color: CustomColors.darkGrey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                          textAlign: TextAlign.left,
                                        );
                                      } else {
                                        var n = jsonDecode(snapshot.data);
                                        return  Text(n['content'][0]['title'].toString().replaceAll("('", "").replaceAll("',)", ""),
                                          style: TextStyle(
                                            color: CustomColors.darkGrey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                          textAlign: TextAlign.left,
                                        );
                                      }
                                    }
                                    // child: Text(widget.content.content.toString(),
                                    //   style: TextStyle(
                                    //     color: CustomColors.darkGrey,
                                    //     fontWeight: FontWeight.bold,
                                    //     fontSize: 18,
                                    //   ),
                                    //   textAlign: TextAlign.left,
                                    // ),
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
                                    print(widget.content.id);
                                    FilePickerResult result = (await FilePicker.platform.pickFiles(
                                        type: FileType.custom,
                                        allowedExtensions: ['pdf']
                                    ))!;

                                    if(result != null) {
                                      File file = File(result.files.single.name!);
                                      print(file.toString());
                                      String baseFile = basename(file.path);
                                      await addAssignment(baseFile, widget.content.id.toString());
                                    } else {

                                    }
                                    print('file uploaded');
                                    setState(() {
                                      isUpload = true;
                                    });
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
      appBar: CampusAppBar(),
      body: _buildBody(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:studapp/screens/students_list.dart';
import 'dart:async';
void main() {
  runApp(MyApp());




}
//print("start the application");
//
//  getFileContent();
//print("ent the the application");


//getFileContent() async{
//
//  String fileContent =await  downleodFile();
//  print(fileContent);
//}

getFileContent() {

  Future<String> fileContent =downleodFile();
  fileContent.then((result){

    print(result);
  });
}

Future <String> downleodFile() {
  Future<String> content = Future.delayed(Duration(seconds: 6), () {
    return "Internet File Content";
  });
  return content;
}




class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Student List",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan
    ),
      home: StudentsList(),
    );
    }
  }


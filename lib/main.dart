import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Patient.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
        title :'Patient Get Data' ,
        theme : ThemeData(
          primaryColor: Colors.brown ,
        ),
        home : Scaffold(
          body: Patient(
            First_name : 'here patient name',
          ),
        )
    );
  }
}
/*
*/

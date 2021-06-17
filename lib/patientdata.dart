import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Test/flutter_firebase_application/lib/Question.dart';
import 'Patient.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Patientdata extends StatelessWidget{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  //final FirebaseFirestore _firestore = FirebaseFirestore();

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body : StreamBuilder(
          stream : _firestore.collection('Patient').snapshots(),
          builder : (Context, snapshot)  {
            if(! snapshot.hasData) return _Loadingindicator();
            return PageView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (Context, index){
                final document = snapshot.data.documents[index];
                return Patient(
                  First_name :document['First_name'],
                );
              },
            );
          }
      ),

    );
  }
}
class _Loadingindicator extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return  Center(
      child: CircularProgressIndicator(),
    );
  }
}
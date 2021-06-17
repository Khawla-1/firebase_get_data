import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Patient extends StatelessWidget{
  final String First_name ;
  const Patient ({Key key,
    @required this.First_name}):
        super (key: key);
  @override
  Widget build(BuildContext context) {
    return Container (
      child : Column (
        children : <Widget> [
          Text(
            First_name ,
          ),

        ],),
    );
  }}
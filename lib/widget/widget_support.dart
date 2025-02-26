import 'package:flutter/material.dart';

class AppWidget{
static TextStyle boldTextFieldStyle(){
  return  TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold);
}



static TextStyle headerTextFieldStyle(){
  return  TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold);
}
static TextStyle LightTextFieldStyle(){
  return  TextStyle(
                color: Colors.black38,
                fontSize: 15.0,
                fontWeight: FontWeight.bold);
}

static TextStyle SemiBoldTextFieldStyle(){
  return  TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w500);
}
}
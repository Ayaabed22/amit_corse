import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          child: Text('Hello World',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50,
              decoration:TextDecoration.underline),),
        ),
      ),
    );
  }

}
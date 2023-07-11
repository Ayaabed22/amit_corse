import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizentalWrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          children: [
            Icon(Icons.access_alarm_outlined,size: 100,),
            Icon(Icons.access_alarm,size: 100),
            Icon(Icons.ac_unit,size: 100),
            Icon(Icons.abc,size: 100),
            Icon(Icons.access_alarm_outlined,size: 100),
            Icon(Icons.access_alarm,size: 100),
            Icon(Icons.ac_unit,size: 100),
            Icon(Icons.abc,size: 100),
            Icon(Icons.access_alarm_outlined),
            Icon(Icons.access_alarm),
            Icon(Icons.ac_unit),
            Icon(Icons.abc),
            Icon(Icons.access_alarm_outlined),
            Icon(Icons.access_alarm),
            Icon(Icons.ac_unit),
            Icon(Icons.abc),
            Icon(Icons.access_alarm_outlined),
            Icon(Icons.access_alarm),
            Icon(Icons.ac_unit),
            Icon(Icons.abc),
            Icon(Icons.access_alarm_outlined),
            Icon(Icons.access_alarm),
            Icon(Icons.ac_unit),
            Icon(Icons.abc),
          ],
        ),
      ),
    );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey,
    body: Center(
      child: Container(
        color: Colors.yellowAccent,
        child: IconButton(
          icon: const Icon(Icons.access_time),
          iconSize: 100,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Helllo world')));},
        ),
      ),
    ),
   );
  }

}
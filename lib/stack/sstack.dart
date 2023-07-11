import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sstack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar( title: Text("Stack"),),
    body: Center(
      child: Stack(
           alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 90,
                height: 90,
                color: Colors.green,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
            ],
          ),
    )
      // children: [
      //   Icon(Icons.accessible_forward_rounded,size: 90,color: Colors.orangeAccent,),
      //   Icon(Icons.add_a_photo_outlined,size: 60,color: Colors.pinkAccent,),
      //   Icon(Icons.edit,size: 50,color: Colors.green,),
      //   Icon(Icons.accessible_forward_rounded,size: 90,color: Colors.blue,),
      //   Icon(Icons.add_a_photo_outlined,size: 60,color: Colors.red,),
      //   Icon(Icons.edit,size: 50,color: Colors.cyan,),
      //   Icon(Icons.accessible_forward_rounded,size: 90,),
      //   Icon(Icons.add_a_photo_outlined,size: 60,),
      //   Icon(Icons.edit,size: 50,),
      // ],

  );
  }

}
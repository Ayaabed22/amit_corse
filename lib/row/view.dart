import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowR extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
              body:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.yellow,
                      ),

                    ],),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.orangeAccent,
                  ),

                ],
              ),


    );
  }

}
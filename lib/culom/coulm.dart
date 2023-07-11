import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     body: Column(
       children: [
         Image.network("https://picsum.photos/id/1074/400/400",height: 100,width: 100,),
         SizedBox(height: 14,),
          Image.network("https://media.istockphoto.com/id/1394781347/photo/hand-holdig-plant-growing-on-green-background-with-sunshine.jpg?s=1024x1024&w=is&k=20&c=KJIpH7RN4AousDF7cdcNkMFV4JBLKe7Ild_9tWCXFys=",height: 100,width: 100,),
         SizedBox(height: 14,),
         // Image.network(""),
         // SizedBox(height: 14,),
         // Image.network(""),
         // SizedBox(height: 14,),
         // Image.network(""),
         // SizedBox(height: 14,),
       ],
     ),
   );
  }

}
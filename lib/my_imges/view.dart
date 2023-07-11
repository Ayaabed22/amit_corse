import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class MyGallaryScreen extends StatefulWidget {
  const MyGallaryScreen ({Key? key}) : super(key: key);

  @override
  State<MyGallaryScreen> createState() => _MyGallaryScreenState();
}

class _MyGallaryScreenState extends State<MyGallaryScreen> {
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed:()async {
                   var Image= await ImagePicker.platform.getImage(source: ImageSource.camera);

                   if(Image !=null) {
                     print("Image is Picked");
                     print(Image.path);
                     imagePath=Image.path;
                     setState(() {

                     });
                   }else{
                     print("User Closed Camera");
                   }
                    } , iconSize: 100,icon:Icon(Icons.camera_alt,color: Colors.blue,) ,),
                  IconButton(onPressed:(){

                    } , iconSize: 100,icon:Icon(Icons.browser_updated,color: Colors.blue,) ,),

                ],
              ),

              if(imagePath!=null)
                Image.file(File(imagePath!),height: 300,width: 300,),
              ElevatedButton(onPressed: (){}, child: Text("click")),
              OutlinedButton(onPressed: (){}, child: Text("click")),
              TextButton(onPressed: (){}, child: Text("click")),
              CircleAvatar(),
              CircularProgressIndicator(),

            ],
          ),
        ),
      ),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),

    );
  }
}

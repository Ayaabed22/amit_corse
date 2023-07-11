import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model.dart';
class CitiesScreen extends StatefulWidget {
  const CitiesScreen ({Key? key}) : super(key: key);

  @override
  State<CitiesScreen> createState() => _CitiesScreenState();
}

class _CitiesScreenState extends State<CitiesScreen> {
  List<CityModel>list=[];
  getCities() async{
    var response= await Dio().get("https://alalmiyalhura-58f05-default-rtdb.firebaseio.com/cities.json");
    CityData model=CityData.fromJson(response.data);
    list.addAll(model.data);
    setState(() {

    });
  }
  @override
  void initState() {
    getCities();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title:Text("Cities")),
      body: ListView.separated(
          padding: EdgeInsets.all(16),
          itemBuilder: (context,index) =>
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text( list[index].name,style: TextStyle(fontSize: 35),),
          ) ,
          separatorBuilder: (context,index)=> Divider(color: Colors.green,thickness: 3,),
          itemCount:list.length),
    );
  }
}

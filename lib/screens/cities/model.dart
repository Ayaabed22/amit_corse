class CityData {

  late final List<CityModel> data;
  late final String message;
  late final String status;

  CityData.fromJson(Map<String, dynamic> json){
    //data = List.castFrom<dynamic, CityModel>(json['data']);
   data = List.from(json['data']).map((e) =>CityModel.fromJson(e??{})).toList();
    message = json['message'];
    status = json['status'];
  }

}

class CityModel {

  late final String id;
  late final String name;

  CityModel.fromJson(Map<String, dynamic> json){
    id = json['id']??"0";
    name = json['name']??"";
  }

}
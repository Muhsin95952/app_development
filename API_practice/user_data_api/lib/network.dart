import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_data_api/user_data.dart';

class Network {

  String url = "https://jsonplaceholder.typicode.com/users";
  List<User> userList = [];
  
  getUserApiData() async {
    final response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    print(jsonData);

    if(response.statusCode == 200){
      for(Map<String, dynamic> mapObject in jsonData){
        userList.add(User.fromJson(mapObject));
      }
      return userList;
    }
    else{
      return userList;
    }

  }
}
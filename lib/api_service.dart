import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/user.dart';

/***
 * Api base da palicação utilizada para se comunicar com o banco de dados
 * Nesta página os requests são feitos através de um pacote http
 * Foi alterado para apresentação do trabalho
 ***/

class ApiService {
  static String url(int nrResults) {
    return 'http://api.randomuser.me/?results=$nrResults';
  }

  static Future<List<User>> getUsers({int nrUsers = 1}) async {
    try {
      var response =
          await http.get(url(nrUsers), headers: {"Content-Type": "application/json"});

      if(response.statusCode == 200){
        Map data = json.decode(response.body);
        Iterable list = data["results"];
        List<User> users = list.map((l)=>User.fromJson(l)).toList();
        return users;
      } else {
        print(response.body);
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}

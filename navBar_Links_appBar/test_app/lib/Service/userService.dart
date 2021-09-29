

import 'package:dio/dio.dart';
import 'package:test_app/Model/User.dart';

class UserService {

  String baseUrl = "https://jsonplaceholder.typicode.com";
  String usersLink ="/users";

  Future <List<User>> getUser () async{
    List <User> usersList=[];
    Response response  =await Dio().get('$baseUrl$usersLink');
    var data= response.data ;
    data.forEach((element){
      usersList.add(User.fromJson(element));

    } );
    return usersList;
  }
}
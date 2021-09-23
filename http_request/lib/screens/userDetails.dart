import 'package:flutter/cupertino.dart';
import 'package:navigate_screens/model/User.dart';
import 'package:flutter/material.dart';
import 'package:navigate_screens/model/User.dart';
import 'package:navigate_screens/screens/userDetails.dart';
import 'package:navigate_screens/service/userService.dart';
import 'usersScreen.dart';
class UserDetails extends StatefulWidget {

  final int index;  final List<User> infoList;
  UserDetails(this.index , this.infoList);

  @override
  _UserDetailsState createState() => _UserDetailsState(index,infoList);
}

class _UserDetailsState extends State<UserDetails> {
  final int index; final List<User> infoList;

  _UserDetailsState(this.index, this.infoList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),),
      body: Container (
          alignment: Alignment.center,
          color: Colors.amber[600],
          width: 450.0,
          height: 450.0,



          child:  Text(
     " ${infoList[index].username } \n ${infoList[index].phone } \n  ${infoList[index].email} \n"
         "${infoList[index].address } \n   ${infoList[index].company } \n"
         "${infoList[index].website } \n"
         ,
     textAlign: TextAlign.center,

        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 2.5),
      )












      ) ,




    );
  }
}

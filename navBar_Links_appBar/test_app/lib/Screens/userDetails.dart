import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Model/User.dart';

import '../utils.dart';
class UserDetails extends StatefulWidget {
User user;

  UserDetails({this.user});

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),),
      body:  SingleChildScrollView(
        child: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Username: ${widget.user.username } \n "
                  , textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 2.5),
                ),
          InkWell(
            child:
                Text(
                  "Phone Num:  ${widget.user.phone } \n  "
                  ,
                  textAlign: TextAlign.center,

                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 2.5),
                ),
              onTap: () {
    launchURL("tel://${widget.user.email}");
    }
          ),
          InkWell(
            child:
                Text(
                  "Email: ${widget.user.email} \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 2.5),
                ),
              onTap: () {
    launchURL("mailto://${widget.user.email}?subject= new Email&bodu= new email ");
    }
          ),
                Text(
                  "City: ${widget.user.address.city }  \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 2.5),
                ),
                Text(
                   "Company name: ${widget.user.company.name} \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 2.5),
                ),
               InkWell(
                 child:
                 Text(
                   "Website: ${widget.user.website } \n",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.bold,
                       color: Colors.black,
                       height: 2.5),
                 ),
                 onTap: () {
                   launchURL("http://${widget.user.website}");
                 }
               )

              ],
            ),
      )

















)    );
  }
}

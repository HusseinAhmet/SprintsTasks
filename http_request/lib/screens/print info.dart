
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class printInfo extends StatefulWidget {
  String email;
  String password;
  printInfo({key, this.email, this.password});
   
  @override
  _printInfoState createState() => _printInfoState();
}

class _printInfoState extends State<printInfo> {
  

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(

    child:

        Column(
          mainAxisAlignment: MainAxisAlignment.center,

         children: [
          Text(
            "Entered Email:${widget.email}",

            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),

          ),

           Text(
             "Entered Password: ${widget.password}",
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 19,
             ),

           ),
      ],),

      ), );
  }
}

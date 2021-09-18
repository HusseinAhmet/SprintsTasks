
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigate_screens/screens/print%20info.dart';

class login extends StatefulWidget {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();


  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In Form"),
        centerTitle: true,
      ),
      body:
      ListView(
        children: [ Column(
        children: [
          Image.asset("assets/flutter.jpg"),
          Container(
            padding: const EdgeInsets.all(40.0),
            child: Form(
              autovalidateMode: AutovalidateMode.always, child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration:  InputDecoration(
                      labelText: "Enter Email",
                      fillColor: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                    controller: _EmailController,
                ),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Enter Password",
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  controller: _PasswordController,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                ),
                MaterialButton(
                  height: 50.0,
                  minWidth: 150.0,
                  color: Colors.green,
                  splashColor: Colors.teal,
                  textColor: Colors.white,
                  child: Text("Log in"),
                  // Icon(Icons.add_circle),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => printInfo(
                          email: _EmailController.text,  password: _PasswordController.text,
                        )));
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 20),),
                  child: const Text('Forget Password? Tap here'),
                  onPressed: () {},
                ),

                MaterialButton(
                  height: 50.0,
                  minWidth: 150.0,
                  color: Colors.green,
                  splashColor: Colors.teal,
                  textColor: Colors.white,
                  child: Text("No Account? Tap here to sign up"),
                  // Icon(Icons.add_circle),
                  onPressed: () {

                  },
                ),
              ],
            ),
            ),
          )
        ],),],) ,);
  }}
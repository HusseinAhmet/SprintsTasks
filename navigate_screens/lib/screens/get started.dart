import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'main.dart';

class getStarted extends StatefulWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text("Fitness App"),
  ),
  body: Padding(
  padding: const EdgeInsets.all(20.0),
  child: Center(
  child: Container(
  color: Colors.tealAccent,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
  Image.asset("assets/yogaaa.jpg"),
  const Text(
  "Enjoy a Healthy Lifestyle",
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 25,
  ),
  ),
  const Text(
  "Lorem ipsum dolor sit amet consectur adipicing elit ,sed do eliusmod",
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.grey,
  fontSize: 15,
  ),
  ),
  MaterialButton(
  height: 50.0,
  minWidth: 150.0,
  color: Colors.deepPurpleAccent,
  splashColor: Colors.teal,
  textColor: Colors.white,
  child: Text("Get Started"),
  // Icon(Icons.add_circle),
  onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
  },
  )
  ],
  ),
  )),
  ));
  }
}

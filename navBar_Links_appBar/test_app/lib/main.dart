import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/usersScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Our test App",
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  userScreen(),
    );
  }
}





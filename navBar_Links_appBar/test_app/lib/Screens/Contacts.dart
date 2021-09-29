import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
        child: Text(
          "Contacts Page",
          style: TextStyle(
            fontSize: 22,color: Colors.black,
          ),
        ),)


    );
  }
}

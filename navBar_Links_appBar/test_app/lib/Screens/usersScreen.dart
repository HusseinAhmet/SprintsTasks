import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../StartPage.dart';
import 'Contacts.dart';
import 'Settings.dart';

class userScreen extends StatefulWidget {
  const userScreen({key}) : super(key: key);

  @override
  _userScreenState createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    StartPage(),
    ContactsPage(),
    SettingsPage(),
  ];
  @override
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(80),
                bottomLeft: Radius.circular(80),
              ),
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        body: pages[currentIndex]);
  }
}

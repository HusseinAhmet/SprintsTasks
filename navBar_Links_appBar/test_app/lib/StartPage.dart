import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Model/User.dart';
import 'Screens/userDetails.dart';
import 'Service/userService.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();

}

class _StartPageState extends State<StartPage> {
  List <User> userList = [];
  bool isLoading= true;
  getUserList() async{

    userList = await  UserService().getUser();
    isLoading = false;
    setState(() {

    });
  }
  @override
  void initState(){
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      isLoading?  Center(child: CircularProgressIndicator(),)
          : ListView.builder(
          itemCount: userList.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text("${userList[index].name}"),
              leading: Text("${userList[index].id}"),


              onTap: (){

                Navigator.push(context,

                    MaterialPageRoute(builder: (context) => UserDetails( user: userList[index]) )
                );
              },


              trailing: Icon(Icons.people),
            );
          }
      )


    );
  }
}

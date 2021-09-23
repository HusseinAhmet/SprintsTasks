import 'package:flutter/material.dart';
import 'package:navigate_screens/model/User.dart';
import 'package:navigate_screens/screens/userDetails.dart';
import 'package:navigate_screens/service/userService.dart';

class userScreen extends StatefulWidget {
  const userScreen({key}) : super(key: key);

  @override
  _userScreenState createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  @override
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


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading?  Center(child: CircularProgressIndicator(),)
        : ListView.builder(
        itemCount: userList.length,
          itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text("${userList[index].name}"),
             leading: Text("${userList[index].id}"),


            onTap: (){

              Navigator.push(context,

                  MaterialPageRoute(builder: (context) => UserDetails( index,userList) )
              );
            },


            trailing: Icon(Icons.people),
          );
          }
      )




    );
  }
}

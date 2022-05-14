/*
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:treeview_example/service.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {


  List<UserModel> user = [];

  @override
  void initState() {
    // TODO: implement initState

    ApiService.getUser().then((value) {

      setState(() {
        //user = value!;
      });

    }

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("User List"),
        ),
      body:
      user.isEmpty?
      CircularProgressIndicator(
        color: Colors.red,
      ):

      ListView.builder(
        itemCount: user.length,
          itemBuilder: (BuildContext contex, int index){
            return Card(
              child: Column(
                children: [
                  Text(user[index].name.toString()),

                  Text(user[index].phone.toString()),

                  Text(user[index].email.toString()),

                ],
              ),
            );
          }),
    );


  }
}
*/

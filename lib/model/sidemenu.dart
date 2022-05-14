
import 'package:flutter/material.dart';
import 'package:treeview_example/screen_one.dart';
import 'package:treeview_example/screen_two.dart';
import 'package:treeview_example/screenthree.dart';

Widget homeDrawer(BuildContext context){

  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(

// Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
    accountName: Text("bala",  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:  Colors.black,),),
    accountEmail: Text("bala977@gmail.com",  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color:  Colors.black,),),
    currentAccountPicture: CircleAvatar(


            backgroundColor: Colors.black,
            child: Text(
              "Bala",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person), title: Text("Users",  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color:  Colors.black,),),
          onTap: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ScreenOne()),
            );
          },
          iconColor: Colors.black,
        ),
        ListTile(
          leading: Icon(Icons.photo), title: Text("Photos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color:  Colors.black,),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenOne()),
            );

          },
          iconColor: Colors.black,

        ),
        ListTile(
          leading: Icon(Icons.photo_album), title: Text("Albums", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color:  Colors.black,),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ScreenOne()),
            );

          },
          iconColor: Colors.black,

        ),

      ],
    ),
  );


}



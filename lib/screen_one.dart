import 'package:flutter/material.dart';
import 'package:treeview_example/model/sidemenu.dart';
import 'package:treeview_example/screen_two.dart';
import 'package:treeview_example/service.dart';
import 'model/user_model.dart';


class ScreenOne extends StatefulWidget {
  //
  ScreenOne() : super();
  @override
  _ScreenOneState createState() => _ScreenOneState();
}
class _ScreenOneState extends State<ScreenOne> {
  //
  List<User> _users = [];
  bool _loading= false;
  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text('Users')),
      ),
      drawer: homeDrawer(context),
      body: _loading ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CircularProgressIndicator(color: Colors.red,)),
        ],
      ):Container(

        color: Colors.greenAccent,
        child: ListView.builder(

          itemCount: null == _users ? 0 : _users.length,

          itemBuilder: (context, index) {
            User user = _users[index];

            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTwo(user.id.toString())));
              },
              child: ListTile(
                title: Text(user.name.toString()),
                subtitle: Text(user.email.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
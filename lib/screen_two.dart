import 'package:flutter/material.dart';
import 'package:treeview_example/model/album_model.dart';
import 'package:treeview_example/screenthree.dart';
import 'package:treeview_example/service.dart';
import 'model/user_model.dart';


class ScreenTwo extends StatefulWidget {
  final String userId;
  //
  ScreenTwo(this.userId) : super();
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}
class _ScreenTwoState extends State<ScreenTwo> {
  //
  List<Album> _album = [];
  bool _loading= false;
  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getAlbum(widget.userId).then((album) {

      setState(() {
        _album = album;
        _loading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text( 'Album')),
      ),
      body: _loading ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CircularProgressIndicator(color: Colors.red,)),
        ],
      ):Container(
        color: Colors.amberAccent,
        child: ListView.builder(
          itemCount: null == _album ? 0 : _album.length,
          itemBuilder: (context, index) {
            Album album = _album[index];
            return InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenThree(album.id.toString())));

              },
              child: ListTile(
                title: Text(album.title.toString()),
                subtitle: Text("User ID - ${album.userId.toString()}  Album ID ${album.id.toString()} "),
              ),
            );
          },
        ),
      ),
    );
  }
}
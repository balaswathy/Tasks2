import 'package:flutter/material.dart';
import 'package:treeview_example/model/album_model.dart';
import 'package:treeview_example/model/photo_model.dart';
import 'package:treeview_example/service.dart';
import 'model/user_model.dart';


class ScreenThree extends StatefulWidget {
  final String albumId;
  //
  ScreenThree(this.albumId) : super();
  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}
class _ScreenThreeState extends State<ScreenThree> {
  //
  List<Photo> _photo = [];
  bool _loading= false;
  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getPhoto(widget.albumId).then((photo) {

      setState(() {
        _photo = photo;
        _loading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text( 'Photo')),
      ),
      body: _loading ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CircularProgressIndicator(color: Colors.red,)),
        ],
      ):Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: null == _photo ? 0 : _photo.length,
          itemBuilder: (context, index) {
            Photo photo = _photo[index];

            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(photo.thumbnailUrl.toString(),height: 100,width: 100),

                      Container(
                        width: MediaQuery.of(context).size.width*0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(photo.title.toString()),
                            SizedBox(height: 10,),
                            Text("albumId ID - ${photo.albumId.toString()}  Photo ID ${photo.id.toString()} "),
                            SizedBox(height: 10,),

                            Text(photo.url.toString()),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
            return ListTile(
              title: Text(photo.title.toString()),
              subtitle: Text("albumId ID - ${photo.albumId.toString()}  Photo ID ${photo.id.toString()} "),
            );
          },
        ),
      ),
    );
  }
}
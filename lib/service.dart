import 'package:http/http.dart' as http;
import 'package:treeview_example/model/album_model.dart';
import 'package:treeview_example/model/photo_model.dart';
import 'model/user_model.dart';


class Services {

  static const String userUrl = "http://jsonplaceholder.typicode.com/users";

  //
  static Future<List<User>> getUsers() async {
    Uri url = Uri.parse(userUrl.toString());

    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<User> users = userFromJson(response.body);
        return users;
      } else {
        throw Exception("errror");
      }
    } catch (e) {
      throw Exception(e);

    }
  }



  static Future<List<Album>> getAlbum(String userId) async {
    String albumUrl = "$userUrl/$userId/albums";

    Uri url = Uri.parse(albumUrl);
    print(albumUrl);

    try {
      final response = await http.get(url);

      if (200 == response.statusCode) {
        final List<Album> albums = albumFromJson(response.body);
        return albums;
      } else {
        throw Exception("errror");
      }
    } catch (e) {
      throw Exception(e);

    }
  }



  static Future<List<Photo>> getPhoto(String albumId) async {
    String albumUrl = "https://jsonplaceholder.typicode.com/albums/$albumId/photos";

    Uri url = Uri.parse(albumUrl);
    print(albumUrl);

    try {
      final response = await http.get(url);

      if (200 == response.statusCode) {
        final List<Photo> photo = photoFromJson(response.body);
        return photo;
      } else {
        throw Exception("errror");
      }
    } catch (e) {
      throw Exception(e);

    }
  }

}
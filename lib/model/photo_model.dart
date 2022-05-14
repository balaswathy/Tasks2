// To parse this JSON data, do
//
//     final photo = photoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Photo> photoFromJson(String str) => List<Photo>.from(json.decode(str).map((x) => Photo.fromJson(x)));

String photoToJson(List<Photo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Photo {
  Photo({
    @required this.albumId,
    @required this.id,
    @required this.title,
    @required this.url,
    @required this.thumbnailUrl,
  });

  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
    albumId: json["albumId"] == null ? null : json["albumId"],
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    url: json["url"] == null ? null : json["url"],
    thumbnailUrl: json["thumbnailUrl"] == null ? null : json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId == null ? null : albumId,
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "url": url == null ? null : url,
    "thumbnailUrl": thumbnailUrl == null ? null : thumbnailUrl,
  };
}

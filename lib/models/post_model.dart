// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  final String namePost;
  final String postBody;
  final Timestamp timePost;
  final String uidPost;
  final String urlAvaggarPost;
  PostModel({
    required this.namePost,
    required this.postBody,
    required this.timePost,
    required this.uidPost,
    required this.urlAvaggarPost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namePost': namePost,
      'postBody': postBody,
      'timePost': timePost,
      'uidPost': uidPost,
      'urlAvaggarPost': urlAvaggarPost,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      namePost: (map['namePost'] ?? '') as String,
      postBody: (map['postBody'] ?? '') as String,
      timePost: (map['timePost']),
      uidPost: (map['uidPost'] ?? '') as String,
      urlAvaggarPost: (map['urlAvaggarPost'] ?? '') as String,
    );
  }

  factory PostModel.fromJson(String source) => PostModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

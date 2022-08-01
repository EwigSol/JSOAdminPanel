// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? description;
  String? dynamicLink;
  String? imageUrl;
  bool? isAdmin;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.description,
    this.dynamicLink,
    this.imageUrl,
    this.isAdmin,
  });

  UserModel.fromFirestore(DocumentSnapshot doc) {
    id = doc['id'];
    name = doc['name'];
    email = doc['email'];
    description = doc['description'];
    dynamicLink = doc['dynamicLink'];
    imageUrl = doc['imageUrl'];
    isAdmin = doc['isAdmin'];
  }
}

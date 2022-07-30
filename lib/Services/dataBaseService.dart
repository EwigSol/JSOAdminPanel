import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jsoadminpanel/Constants/globalVariables.dart';

import '../Models/userModel.dart';

class Database {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //! Regarding Users

  Future<bool> createUser(UserModel userModel) async {
    try {
      await firestore
          .collection("users")
          .doc(userModel.id)
          .collection('userDetials')
          .doc('userDetials')
          .set({
        "id": userModel.id,
        "name": userModel.name,
        "email": userModel.email,
        "description": userModel.description,
        "dynamicLink": userModel.dynamicLink,
        'imageUrl': userModel.imageUrl,
        'isAdmin': userModel.isAdmin,
        'tag': userModel.tag,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  //! Update Data
  Future<void> updateProfilePic(imageUrl) async {
    await firestore
        .collection("users")
        .doc(userID.value)
        .collection('userDetials')
        .doc('userDetials')
        .update({"imageUrl": imageUrl});
  }

  Future<void> updateName(name) async {
    await firestore
        .collection("users")
        .doc(userID.value)
        .collection('userDetials')
        .doc('userDetials')
        .update({"name": name});
  }

  Future<void> updateDescription(description) async {
    await firestore
        .collection("users")
        .doc(userID.value)
        .collection('userDetials')
        .doc('userDetials')
        .update({"description": description});
  }

  //Streams start from here
  //User Stream
  Stream<List<UserModel>> userStreamm(String uid) {
    return firestore
        .collection('users')
        .doc(uid)
        .collection('userDetials')
        .snapshots()
        .map((QuerySnapshot querySnapshot) {
      List<UserModel> retVal = [];
      querySnapshot.docs.forEach((element) {
        retVal.add(UserModel.fromFirestore(element));
      });
      return retVal;
    });
  }
}

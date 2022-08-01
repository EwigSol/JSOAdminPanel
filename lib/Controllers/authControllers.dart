// ignore_for_file: file_names, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jsoadminpanel/Configs/routes.dart';
import 'package:jsoadminpanel/Constants/globalVariables.dart';
import 'package:jsoadminpanel/Controllers/userController.dart';
import 'package:jsoadminpanel/Models/userModel.dart';
import 'package:jsoadminpanel/Services/dataBaseService.dart';

class AuthController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  Rxn<User> firebaseUser = Rxn<User>();

  User? get userGetter => firebaseUser.value;

  UserModel userModel = UserModel();

  @override
  void onInit() {
    super.onInit();
    firebaseUser.bindStream(auth.authStateChanges());
  }

  Future<void> createUser(String name, String email, String password) async {
    try {
      UserCredential authResult = await auth.createUserWithEmailAndPassword(
          email: email.trim(), password: password);

      if (authResult.additionalUserInfo!.isNewUser) {
        UserModel userModel = UserModel(
          id: authResult.user!.uid,
          name: name,
          email: email,
          description: 'Admin User',
          imageUrl: '',
          isAdmin: true,
        );
        await Database().createUser(userModel);
      }
      Get.snackbar(
        "SignedUp",
        'Account Created Successfuly',
      );
    } catch (e) {
      Get.snackbar(
        "Error in Creating Account",
        e.toString(),
      );
    }
  }

  Future<void> logIn(String email, String password) async {
    try {
      UserCredential authResult = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      isSigned.value = true;
      userID.value = authResult.user!.uid;
      Get.put(UserController()).onInit();
      if (userModel.isAdmin == true) {
        Get.offAllNamed(Routes.dashBoard);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      // Get.snackbar(
      //   'Password Reset',
      //   'Recovery email has been sent!',
      //   backgroundColor: kDarkColor,
      //   colorText: kBrightColor,
      // );
    } catch (e) {
      // Get.snackbar(
      //   'Resetting failed',
      //   e.toString(),
      //   backgroundColor: kDarkColor,
      //   colorText: kBrightColor,
      // );
    }
  }

  Future<bool> validatePasttword(String password) async {
    var user = auth.currentUser!;
    try {
      var authCredentials =
          EmailAuthProvider.credential(email: user.email!, password: password);

      // ignore: unused_local_variable
      var authResult = await user.reauthenticateWithCredential(authCredentials);
      return true;
    } catch (e) {
      Get.snackbar('Error', e.toString());
      return false;
    }
  }

  Future<void> changePassword(String newPassword) async {
    var user = auth.currentUser!;
    try {
      await user.updatePassword(newPassword);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();

      isSigned.value = false;
      userID.value = '';
      await Get.offAllNamed('/');
    } catch (e) {
      print(e.toString());
    }
  }
}

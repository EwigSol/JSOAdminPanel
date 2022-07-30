import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jsoadminpanel/Controllers/userController.dart';
import 'package:jsoadminpanel/Models/userModel.dart';
import 'package:jsoadminpanel/Services/dataBaseService.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Rxn<User> firebaseUser = Rxn<User>();

  User? get userGetter => firebaseUser.value;

  @override
  void onInit() {
    super.onInit();
    firebaseUser.bindStream(auth.authStateChanges());
  }

  Future<void> createUser(String name, String email, String password) async {
    try {
      UserCredential _authResult = await auth.createUserWithEmailAndPassword(
          email: email.trim(), password: password);

      UserModel _userModel = UserModel(
        id: _authResult.user!.uid,
        name: name,
        email: email,
        description: 'I am Taplo user',
        imageUrl: '',
        isAdmin: true,
        tag: true,
      );
      await Database().createUser(_userModel);
      Get.back();
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
      UserCredential _authResult = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      // isSigned.value = true;
      // userID.value = _authResult.user!.uid;
      Get.put(UserController()).onInit();

      // Get.offAll(
      //   () => HomeView(),
      // );
      // Get.snackbar(
      //   "SignedIn",
      //   "Signedin Successfully",
      //   snackPosition: SnackPosition.BOTTOM,
      // );
    } catch (e) {
      // Get.snackbar("Error in Signing In", e.toString(),
      //     snackPosition: SnackPosition.BOTTOM, backgroundColor: kRedColor);
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

      var authResult = await user.reauthenticateWithCredential(authCredentials);
      return true;
    } catch (e) {
      Get.snackbar('Error', e.toString());
      return false;
    }
    // return authResult.user != null;
  }

  Future<void> changePassword(String newPassword) async {
    var user = auth.currentUser!;
    try {
      await user.updatePassword(newPassword);
      // Get.snackbar(
      //   'Successful',
      //   'Password Changed Successfully.',
      //   backgroundColor: kDarkColor,
      //   colorText: kBrightColor,
      // );
    } catch (e) {
      // Get.snackbar(
      //   'Failed',
      //   e.toString(),
      //   backgroundColor: kDarkColor,
      //   colorText: kBrightColor,
      // );
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();

      // isSigned.value = false;
      // userID.value = '';
      // await Get.offAll(() => LoginView());
    } catch (e) {
      Get.snackbar("Error in Signing Out", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

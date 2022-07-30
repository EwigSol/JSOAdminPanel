import 'package:get/get.dart';
import 'package:jsoadminpanel/Constants/globalVariables.dart';
import 'package:jsoadminpanel/Controllers/authControllers.dart';
import 'package:jsoadminpanel/Controllers/userController.dart';

class AuthCheckBinding implements Bindings {
  @override
  void dependencies() {
    if (Get.find<AuthController>().userGetter != null) {
      print('auth checking...');
      isSigned.value = true;
      userID.value = Get.find<AuthController>().userGetter!.uid;
      print('User Found:::: ${userID.value}');
      Get.put(UserController());
    } else {
      isSigned.value = false;
      print('User not Found*******************');
    }
  }
}

// ignore_for_file: file_names, avoid_print

import 'package:get/get.dart';

import 'package:jsoadminpanel/Models/userModel.dart';
import 'package:jsoadminpanel/Services/dataBaseService.dart';
import 'package:jsoadminpanel/utils/Constants/globalVariables.dart';

class UserController extends GetxController {
  Rxn<List<UserModel>> userModel = Rxn<List<UserModel>>();

  UserModel? get userGetter => userModel.value?.first;

  @override
  void onInit() {
    print('userController initilized:::::::::::');
    if (isSigned.value!) {
      userModel.bindStream(Database().userStreamm(userID.value!));
    } else {}
    super.onInit();
  }

  set userSetter(UserModel value) {
    userModel.value?.first = value;
  }

  void clear() {
    userModel.value?.first = UserModel();
  }
}

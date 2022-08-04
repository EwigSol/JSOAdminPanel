// ignore_for_file: file_names

import 'package:get/get.dart';

Rxn<bool> isSigned = Rxn<bool>();
Rxn<String> userID = Rxn<String>();
Rxn<String> visitUserID = Rxn<String>();
Rx<bool> isLoading = false.obs;

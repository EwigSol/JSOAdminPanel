// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/Views/auth/auth.dart';
import 'package:jsoadminpanel/Views/rootView.dart/root.dart';
import 'package:jsoadminpanel/utils/Constants/globalVariables.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';

class LoadingScreen extends StatelessWidget {
  LoadingScreen({Key? key}) : super(key: key);
  final isLoading = true.obs;
  @override
  Widget build(BuildContext context) {
    if (isSigned.value == null) {
      isLoading.value = true;
    } else {
      isLoading.value = false;
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.lightTheme.backgroundColor,
        body: Obx(
          () {
            if (isSigned.value == null) {
              return Center(
                child: CircularProgressIndicator(
                  color: AppTheme.lightTheme.primaryColor,
                ),
              );
            } else {
              return isSigned.value! ? RootView() : AuthView();
            }
          },
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/Constants/globalVariables.dart';
import 'package:jsoadminpanel/Constants/theme.dart';
import 'package:jsoadminpanel/Views/auth/auth.dart';
import 'package:jsoadminpanel/Views/dashBoard/dashBoard.dart';

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
              return isSigned.value! ? const DashBoard() : AuthView();
            }
          },
        ),
      ),
    );
  }
}

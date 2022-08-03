// ignore_for_file: must_be_immutable

import 'package:jsoadminpanel/Controllers/authControllers.dart';
import 'package:jsoadminpanel/Models/userModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';
import 'widgets/loginForm.dart';

class AuthView extends StatelessWidget {
  AuthView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthController authController = Get.put(AuthController());
  final isObsecure = true.obs;
  final double _height = Get.height;
  final double _width = Get.width;
  UserModel userModel = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: _width * 0.4,
                    height: _height * 0.63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 10)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: _height * 0.04,
                        ),
                        Image.asset(
                          'assets/images/justsaleonline-logo.png',
                          width: _width * 0.3,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: LoginForm(
                              emailController: emailController,
                              isObsecure: isObsecure,
                              passwordController: passwordController,
                              authController: authController,
                              width: _width,
                              userModel: userModel),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // messages
            ),
          ),
        ],
      ),
    );
  }
}

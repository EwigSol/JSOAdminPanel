// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/Configs/theme_settings.dart';
import 'package:jsoadminpanel/Constants/constants.dart';
import 'package:jsoadminpanel/Controllers/authControllers.dart';
import 'package:jsoadminpanel/Models/userModel.dart';
import 'package:jsoadminpanel/views/TextField.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.emailController,
    required this.isObsecure,
    required this.passwordController,
    required this.authController,
    required double width,
    required this.userModel,
  })  : _width = width,
        super(key: key);

  final TextEditingController emailController;
  final RxBool isObsecure;
  final TextEditingController passwordController;
  final AuthController authController;
  final double _width;
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, right: 20, left: 20),
          child: TextFieldWidget(
            obsecure: false,
            controller: emailController,
            leadingIcon: Icons.mail,
            lable: 'Email',
            trailing: isObsecure.value ? const SizedBox() : const SizedBox(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 20, right: 20),
          child: Obx(
            () => TextFieldWidget(
              controller: passwordController,
              leadingIcon: Icons.lock,
              lable: 'Password',
              obsecure: isObsecure.value,
              trailing: isObsecure.value
                  ? IconButton(
                      onPressed: () {
                        isObsecure.value = false;
                      },
                      icon: const Icon(
                        Icons.password,
                        color: COLOR_THEME_SECONDARY,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        isObsecure.value = true;
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ),
                    ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: GestureDetector(
              onTap: () {
                // Get.to(() => ForgotPassword());
              },
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                    color: COLOR_THEME_PRIMARY,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: MaterialButton(
              height: 60.0,
              color: COLOR_THEME_PRIMARY,
              onPressed: () async {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  authController.logIn(
                      emailController.text, passwordController.text);
                  showSuccessSnackBar(context, _width, 'Welcom',
                      'You are logged in successfully');
                } else {
                  showErrorSnackBar(
                      context, _width, 'Oh Snap', 'Please fill all the fields');
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white, fontSize: 24, letterSpacing: 2),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

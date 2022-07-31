import 'package:jsoadminpanel/Configs/theme_settings.dart';
import 'package:jsoadminpanel/Controllers/authControllers.dart';
import 'package:jsoadminpanel/Views/widgets/messages.dart';
import 'package:jsoadminpanel/views/TextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthView extends StatelessWidget {
  AuthView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthController authController = Get.put(AuthController());
  final isObsecure = true.obs;
  final double _height = Get.height;
  final double _width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_LIGHT_COLOR,
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
                        const SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          'assets/images/justsaleonline-logo.png',
                          width: 300,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              TextFieldWidget(
                                obsecure: false,
                                controller: emailController,
                                leadingIcon: Icons.mail,
                                lable: 'Email',
                                trailing: isObsecure.value
                                    ? const SizedBox()
                                    : const SizedBox(),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Obx(
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
                              const SizedBox(
                                height: 35,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                width: double.infinity,
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    // Get.to(() => ForgotPassword());
                                  },
                                  child: const Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        color: COLOR_THEME_PRIMARY,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                width: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(29),
                                  child: MaterialButton(
                                    height: 60.0,
                                    color: COLOR_THEME_PRIMARY,
                                    onPressed: () async {
                                      print('Clicked');
                                      authController.logIn(emailController.text,
                                          passwordController.text);
                                    },
                                    // isLoading.value = false;
                                    // },
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed('/signUp'),
                    child: const Text('SignUp',
                        style: TextStyle(
                            color: COLOR_THEME_PRIMARY,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  const Messages(
                    msg: "Login Successful",
                    type: "success",
                    width: 400,
                    height: 50,
                  ),
                  const Messages(
                    msg: "Login failed",
                    type: "error",
                    width: 400,
                    height: 50,
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

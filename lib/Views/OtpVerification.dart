import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/Constants/Auth/LoginController.dart';

import 'Otp.dart';

class OtpVerification extends StatelessWidget {
  final phone = TextEditingController();
  final LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('او ٹی پی نمبر کی تصدیق کریں'),
      ),
      body: loginController.isLoading(false)
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                                horizontal: 10.0,
                              ),
                              child: TextFormField(
                                controller: phone,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  labelText: 'او ٹی پی نمبر',
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40, bottom: 5),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: ElevatedButton(
                                onPressed: () async {
                                  loginController.verifyPhone(phone.text);
                                  Get.to(OtpScreen());
                                },
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15.0,
                                      horizontal: 15.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Expanded(
                                          child: Text(
                                            "تصدیق کریں",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}

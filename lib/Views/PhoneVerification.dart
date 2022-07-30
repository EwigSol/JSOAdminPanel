import 'package:jsoadminpanel/Constants/Auth/LoginController.dart';
import 'package:jsoadminpanel/views/OtpVerification.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Otp.dart';

class PhoneVerification extends StatelessWidget {
  final phone = TextEditingController();
  final LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('موبائل نمبر کی تصدیق کریں'),
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
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 120.0,
                                    child: CountryCodePicker(
                                      initialSelection: 'PK',
                                      // favorite: ['+92'],
                                      countryFilter: const ['PK'],
                                      hideSearch: true,
                                      showDropDownButton: false,
                                      showFlagDialog: false,
                                      showFlagMain: true,
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    child: TextFormField(
                                      controller: phone,
                                      keyboardType: TextInputType.phone,
                                      decoration: const InputDecoration(
                                        labelText: 'موبائل نمبر',
                                        labelStyle: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                                  // Get.to(OtpScreen());
                                  Get.to(OtpVerification());
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
                                        )),
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

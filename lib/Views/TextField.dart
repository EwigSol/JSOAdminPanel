import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jsoadminpanel/Configs/theme_settings.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    required this.lable,
    required this.controller,
    required this.leadingIcon,
    required this.obsecure,
    this.trailing,
  }) : super(key: key);

  final TextEditingController controller;
  final IconData leadingIcon;
  final Widget? trailing;
  final String lable;
  final bool obsecure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: COLOR_LIGHT_COLOR,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        // textAlign: TextAlign.center,
        obscureText: obsecure,
        controller: controller,
        cursorColor: COLOR_THEME_PRIMARY,
        style: TextStyle(
          color: INPUT_THEME_TXT_COLOR,
          fontSize: 24,
        ),

        decoration: InputDecoration(
            fillColor: Colors.black,
            border: InputBorder.none,
            icon: Icon(
              leadingIcon,
              color: COLOR_THEME_PRIMARY,
            ),
            hintText: lable,
            hintStyle: TextStyle(
              color: INPUT_THEME_PLACEHOLDER_COLOR,
              fontSize: 24,
            ),
            suffixIcon: trailing),
      ),
    );
  }
}

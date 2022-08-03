import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  double height = Get.height;
  double width = Get.width;

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  bool isMobile(BuildContext context) => width < 850;

  bool isTablet(BuildContext context) => width < 1100 && width >= 850;

  bool isDesktop(BuildContext context) => width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}

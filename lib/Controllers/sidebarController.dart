import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/utils/Constants/menuIcons.dart';

class SideBarController extends GetxController {
  final List<IconData> iconsList = [
    AssetImages.dashboard,
    AssetImages.createCategory,
  ];
  final List<String> namesList = [
    'Dashboard',
    'Categories',
  ];

  final _pageController = PageController().obs;
  PageController get pageController => _pageController.value;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  onSelected(int index) {
    _pageController.value.jumpToPage(index);
    _pageController.value = pageController;
  }

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}

// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:jsoadminpanel/Services/responsiveService.dart';
import 'package:jsoadminpanel/Views/category/createCategory.dart';

import 'package:sidebarx/sidebarx.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  // final _key = Get.find<MenuController>().scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('DashBoard')),
    );
  }
}

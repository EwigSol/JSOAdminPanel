import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/Controllers/sidebarController.dart';
import 'package:jsoadminpanel/Views/category/createCategory.dart';
import 'package:jsoadminpanel/Views/dashBoard/dashBoard.dart';
import 'package:jsoadminpanel/utils/sideBar/sidebar/desktop_sidebar.dart';
import 'package:jsoadminpanel/utils/sideBar/sidebar/mobile_sidebar.dart';
import 'package:jsoadminpanel/utils/sideBar/sidebar/tablet_desktop.dart';

class RootView extends StatelessWidget {
  RootView({Key? key}) : super(key: key);

  final SideBarController _sideBarController = Get.put(SideBarController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _sideBarController.scaffoldKey,
      appBar: size < 600
          ? AppBar(
              title: const Text('JSO Admin Panel'),
            )
          : null,
      drawer: size < 600
          ? MobileSidebar(sideBarController: _sideBarController)
          : null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size >= 920
                ? size * 0.2
                : size > 600
                    ? size * 0.1
                    : 0,
            child: size >= 920
                ? DesktopSidebar(sideBarController: _sideBarController)
                : size > 600
                    ? TabletSidebar(sideBarController: _sideBarController)
                    : size < 600
                        ? MobileSidebar(sideBarController: _sideBarController)
                        : null,
          ),
          SizedBox(
            width: size > 920
                ? size * 0.8
                : size > 600
                    ? size * 0.9
                    : size,
            child: PageView(
              controller: _sideBarController.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                DashBoard(),
                CreateCategory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

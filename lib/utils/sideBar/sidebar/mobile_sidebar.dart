import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/Controllers/sidebarController.dart';
import 'package:jsoadminpanel/utils/Constants/menuIcons.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';
import 'package:jsoadminpanel/utils/sideBar/widget/sideBarItem.dart';

class MobileSidebar extends StatelessWidget {
  SideBarController sideBarController;
  MobileSidebar({Key? key, required this.sideBarController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset(AssetImages.logo, height: 10, width: 20),
          const Divider(thickness: 2, color: AppTheme.primaryColor),
          Expanded(
            child: ListView.builder(
              itemCount: sideBarController.iconsList.length,
              itemBuilder: (context, index) {
                return SidebarItem(
                  title: sideBarController.namesList[index],
                  icon: sideBarController.iconsList[index],
                  isTablet: false,
                  press: () {
                    Get.back();
                    sideBarController.onSelected(index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jsoadminpanel/Controllers/sidebarController.dart';
import 'package:jsoadminpanel/utils/Constants/menuIcons.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';
import 'package:jsoadminpanel/utils/sideBar/widget/sideBarItem.dart';

class TabletSidebar extends StatelessWidget {
  SideBarController sideBarController;
  TabletSidebar({Key? key, required this.sideBarController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Image.asset(AssetImages.logo, height: 6, width: 10),
          const Divider(thickness: 2, color: AppTheme.primaryColor),
          Expanded(
            child: ListView.builder(
              itemCount: sideBarController.iconsList.length,
              itemBuilder: (context, index) {
                return SidebarItem(
                  icon: sideBarController.iconsList[index],
                  isTablet: true,
                  press: () {
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

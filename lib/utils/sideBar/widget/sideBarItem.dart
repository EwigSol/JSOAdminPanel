import 'package:flutter/material.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';

class SidebarItem extends StatelessWidget {
  const SidebarItem(
      {Key? key,
      this.title,
      required this.icon,
      required this.press,
      required this.isTablet})
      : super(key: key);
  final String? title;
  final IconData icon;
  final VoidCallback press;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return isTablet
        ? ListTile(
            onTap: press, leading: Icon(icon, color: AppTheme.primaryColor))
        : ListTile(
            onTap: press,
            horizontalTitleGap: 0,
            leading: Icon(icon, color: AppTheme.primaryColor),
            title: Text(title!,
                style: const TextStyle(color: AppTheme.primaryColor)));
  }
}

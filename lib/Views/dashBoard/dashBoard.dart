// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: const Text('DashBoard'),
        ),
        body: Row(
          children: const [
            Drawer(),
          ],
        ));
  }
}

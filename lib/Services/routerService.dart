// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:jsoadminpanel/Configs/routes.dart';
import 'package:jsoadminpanel/Views/auth/auth.dart';
import 'package:jsoadminpanel/Views/dashBoard/dashBoard.dart';
import 'package:jsoadminpanel/Views/loadingScreen/loadingScreen.dart';

class AppRoutes {
  AppRoutes._();

  static const initial = Routes.initial;

  static final routes = [
    GetPage(
      name: Routes.initial,
      page: () => LoadingScreen(),
    ),
    GetPage(
      name: Routes.dashBoard,
      page: () => const DashBoard(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.login,
      page: () => AuthView(),
      transition: Transition.fadeIn,
    ),
  ];
}

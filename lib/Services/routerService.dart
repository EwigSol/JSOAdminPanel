import 'package:get/get.dart';
import 'package:jsoadminpanel/Configs/routes.dart';
import 'package:jsoadminpanel/Views/dashBoard.dart';

class AppRoutes {
  AppRoutes._();

  final initial = Routes.initial;

  final routes = [
    GetPage(
      name: Routes.dashBoard,
      page: () => const DashBoard(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.login,
      page: () => const DashBoard(),
      transition: Transition.fadeIn,
    ),
  ];
}

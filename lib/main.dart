import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsoadminpanel/Controllers/Bindings/authCheckBinding.dart';
import 'package:jsoadminpanel/Controllers/authControllers.dart';
import 'package:jsoadminpanel/Controllers/sidebarController.dart';
import 'package:jsoadminpanel/Services/routerService.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'Configs/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthController());
  Get.put(SideBarController());
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AuthCheckBinding(),
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: AppRoutes.initial,
      getPages: AppRoutes.routes,
    );
  }
}

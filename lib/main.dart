import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jsoadminpanel/Views/Home.dart';
import 'package:jsoadminpanel/Views/LoginView.dart';

import 'Configs/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

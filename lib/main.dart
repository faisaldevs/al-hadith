import 'package:al_hadith/app/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/app_routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      getPages: pages,
      // initialRoute: welcomePage,
      initialRoute: homePage,
    );
  }
}

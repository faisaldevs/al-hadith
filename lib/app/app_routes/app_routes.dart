import 'package:al_hadith/app/screens/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const homePage = "/homePage";
// const homePage = "/homePage";

final pages = [
  // customPage(name: splashScreen, page: const SplashScreen()),
  customPage(name: homePage, page: const HomePage()),
];

GetPage customPage({required String name, required Widget page}) {
  return GetPage(
    name: name,
    page: () => page,
    transition: Transition.cupertino,
  );
}

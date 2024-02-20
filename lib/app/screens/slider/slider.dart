import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class MyImageSlider extends StatelessWidget {
  final List<String> texts;

  const MyImageSlider({super.key, required this.texts});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120.0, // Adjust the height of the slider
        autoPlay: true, // Set to true for automatic sliding
        enlargeCenterPage:
            true, // Set to true for the center image to be larger
      ),
      items: texts.map((text) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
import 'package:al_hadith/theme/theme.dart';
import 'package:flutter/material.dart';

class HadithDetalis extends StatelessWidget {
  final String item2;

  const HadithDetalis({super.key, required this.item2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: AppColors.primaryColor,
              title: Text("bukhari"),
            ),
            Container(
              child: Column(
                children: [

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

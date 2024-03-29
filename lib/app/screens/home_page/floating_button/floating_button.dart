import 'package:al_hadith/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../utils/assets_links.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      overlayColor: Colors.transparent,
      overlayOpacity: 0.0,
      animatedIcon: AnimatedIcons.menu_close,
      childrenButtonSize: const Size(50, 50),
      children: [
        SpeedDialChild(
          child: SizedBox(width: 25,height: 25,child: Image.asset(ImageLink.navIcon1,),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))
          // label: "Home",
        ),
        SpeedDialChild(
          child: SizedBox(width: 25,height: 25,child: Image.asset(ImageLink.navIcon2,),),
          // label: "Home",
        ),
        SpeedDialChild(
          child: SizedBox(width: 25,height: 25,child: Image.asset(ImageLink.navIcon3,),),
          // label: "Home",
        ),
        SpeedDialChild(
          child: SizedBox(width: 25,height: 25,child: Image.asset(ImageLink.navIcon4,),),
          // label: "Home",
        ),
      ],
    );
  }
}

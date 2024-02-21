import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/assets_links.dart';
import '../../global_components/custom_icon_button.dart';

class BodyIcons extends StatelessWidget {
  const BodyIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButtons( imageUrl: ImageLink.bodyImage1,),
        CustomIconButtons( imageUrl: ImageLink.bodyImage2,),
        CustomIconButtons( imageUrl: ImageLink.bodyImage3,),
        CustomIconButtons( imageUrl: ImageLink.bodyImage4,)
      ],
    );
  }
}

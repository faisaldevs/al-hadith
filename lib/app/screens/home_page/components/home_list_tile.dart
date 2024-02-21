import 'package:al_hadith/utils/assets_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
      // padding: const EdgeInsets.all(8),
      width: Get.width * .8,
      // --------width----------
      height: 70,
      child: ElevatedButton(
          style: ButtonStyle(
              // padding: MaterialStatePropertyAll(EdgeInsets.zero),
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(
                Colors.blue[100],
              ),
              // side: MaterialStatePropertyAll(BorderSide()),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                // width: Get.width * .6,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      // width: Get.width * .25,
                      height: Get.height,
                      margin: const EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        child: Image.asset(ImageLink.listTile),
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "সব হাদিসের",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Text(
                          "সব হাদিসের",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "7542",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "হাদিস",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

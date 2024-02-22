import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_colors.dart';
import '../slider/slider.dart';
import 'components/body_icons.dart';
import 'components/home_list_tile.dart';

class HomeDetails extends StatelessWidget {
  HomeDetails({super.key});

  final List<String> texts = [
    'সে-ই মুসলিম, যার জিহ্বা ও হাত থেকে অন্য মুসলিম নিরাপদ থাকে।',
    'নিজের জন্য যা পছন্দ করা হয় সেটা স্বীয় ভাইদের জন্যও পছন্দ করা ঈমানের অংশ।',
    'নাবী সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম এর বানীঃ “আমি তোমাদের তুলনায় আল্লাহ্‌ সম্পর্কে অধিক জ্ঞানী, আর আল্লাহ্‌র প্রতি বিশ্বাস অন্তরের কাজ"।',
  ];

  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: Get.height * .3,
                  width: Get.width,
                  color: AppColors.primaryColor,
                  child: Column(
                    children: [
                      // -----------slider------------
                      MyImageSlider(texts: texts),

                      // -----------slider------------
                      const SizedBox(
                        height: 45,
                      ),
                      const BodyIcons(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  height: Get.height * .6,
                  width: Get.width, // --------width----------
                  // padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        width: 25,
                        child: Divider(
                          height: 10,
                          thickness: 4,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: const Align(
                          alignment: FractionalOffset.topLeft,
                          child: Text(
                            "সব হাদিসের বই",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          // // scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return HomeListTile(onPressed: () {  },);
                          },
                        ),
                      ),
                    ],
                  ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: [
                  //       // const Text("সব হাদিসের বই"),
                  //       ListView.builder(
                  //         // // scrollDirection: Axis.vertical,
                  //         shrinkWrap: true,
                  //         itemCount: 40,
                  //         itemBuilder: (BuildContext context, int index) {
                  //           return Container(
                  //             margin: const EdgeInsets.only(bottom: 10),
                  //             child: const HomeListTile(),
                  //           );
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
      // drawer:  DrawerUi(),
      // floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}

//Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         color: Colors.white,
//         child: Column(
//           children: [
//             AppBar(
//               title: const Text(
//                 "AL Hadith",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30),
//               ),
//               centerTitle: true,
//               backgroundColor: AppColors.primaryColor,
//               actions: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.search,
//                       color: Colors.white,
//                       size: 30,
//                     ))
//               ],
//               leading: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.list,
//                     size: 30,
//                     color: AppColors.white,
//                   )),
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: 300,
//               decoration: const BoxDecoration(
//                   color: AppColors.primaryColor,
//                   borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(30),
//                       bottomLeft: Radius.circular(30))),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MyImageSlider(texts: texts),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SizedBox(
//                       width: 400,
//                       height: 150,
//                       child: Card(
//                         semanticContainer: true,
//                         clipBehavior: Clip.antiAliasWithSaveLayer,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         elevation: 5,
//                         margin: const EdgeInsets.all(10),
//                         color: AppColors.primaryColor,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                               height: 135,
//                               width: 92,
//                               decoration: const BoxDecoration(
//                                   color: AppColors.white,
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(20),
//                                       bottomLeft: Radius.circular(20))),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         Icons.watch_later_outlined,
//                                         color: Colors.cyan,
//                                         size: 50,
//                                       )),
//                                   const Text(
//                                     "sorboses",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 135,
//                               width: 92,
//                               color: AppColors.white,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         Icons.apps,
//                                         color: Colors.green,
//                                         size: 50,
//                                       )),
//                                   const Text(
//                                     "Apps",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 135,
//                               width: 92,
//                               color: AppColors.white,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         Icons.airplanemode_active,
//                                         color: Colors.blue,
//                                         size: 50,
//                                       )),
//                                   const Text(
//                                     "Hadithe Jan",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: 135,
//                               width: 92,
//                               decoration: const BoxDecoration(
//                                   color: AppColors.white,
//                                   borderRadius: BorderRadius.only(
//                                       topRight: Radius.circular(20),
//                                       bottomRight: Radius.circular(20))),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         Icons.bubble_chart,
//                                         color: Colors.yellow,
//                                         size: 50,
//                                       )),
//                                   const Text(
//                                     "Sadaka",
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 22),
//               child: Text(
//                 "হাদিস গ্রন্থের তালিকা",
//                 style: TextStyle(
//                     decoration: TextDecoration.none,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//         ,
//           ],
//         ),
//       )

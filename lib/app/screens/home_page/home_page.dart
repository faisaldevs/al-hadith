import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../theme/app_colors.dart';
import '../chapters/hadithChapter.dart';
import '../drawer/drawer.dart';
import '../slider/slider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> texts = [
    'সে-ই মুসলিম, যার জিহ্বা ও হাত থেকে অন্য মুসলিম নিরাপদ থাকে।',
    'নিজের জন্য যা পছন্দ করা হয় সেটা স্বীয় ভাইদের জন্যও পছন্দ করা ঈমানের অংশ।',
    'নাবী সাল্লাল্লাহু আলাইহি ওয়াসাল্লাম এর বানীঃ “আমি তোমাদের তুলনায় আল্লাহ্‌ সম্পর্কে অধিক জ্ঞানী, আর আল্লাহ্‌র প্রতি বিশ্বাস অন্তরের কাজ"।',
  ];

  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          color: Colors.cyan,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: AppBar(
                  systemOverlayStyle: const SystemUiOverlayStyle(
                    statusBarColor: AppColors.primaryColor,

                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: const Text("Al- Hadith"),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                        foregroundColor: MaterialStatePropertyAll(Colors.transparent),
                        overlayColor: MaterialStatePropertyAll(Colors.transparent),
                      ),
                        onPressed: () {
                          // Get.toNamed(notificationPage);
                        },
                        icon: const Icon(
                          Icons.search,
                          color: Colors.red,
                          size: 28,
                        )),
                  ],
                ),
              ),

              // -----------slider------------



              // -----------slider------------

            ],
          ),
        ),
      ),
      // drawer:  DrawerUi(),
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
//             Expanded(
//               child: ListView.builder(
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     DetailPage(item: items[index])));
//                       },
//                       title: const Text("bukhari"),
//                       subtitle: const Text("imam bukhari"),
//                       trailing: const Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("2342"),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text("hadis"),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       )
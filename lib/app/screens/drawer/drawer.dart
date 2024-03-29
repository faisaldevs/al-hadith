import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

import '../../theme/app_colors.dart';
import '../home_page/floating_button/floating_button.dart';
import '../home_page/homeDetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final _advancedDrawerController = AdvancedDrawerController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.primaryGreen, AppColors.primaryColor.withOpacity(1)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: AppColors.lightBackground,
            iconColor: AppColors.lightBackground,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 12,),
                Container(
                  width: Get.width,
                  height: 120.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/logo/logo2.png',
                  ),
                ),
                // Divider(color: Colors.black,height: 5,),
                Card(
                  color: AppColors.primaryColor,
                  shadowColor: Colors.black,
                  elevation: 5,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
                // Divider(color: Colors.black,height: 5,),

                Card(
                  color: AppColors.primaryColor,
                  shadowColor:Colors.black,
                  elevation: 5,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('Profile'),
                  ),
                ),
                // Divider(color: Colors.black,height: 5,),

                Card(
                  color: AppColors.primaryColor,
                  shadowColor:Colors.black,
                  elevation: 5,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.favorite),
                    title: Text('Favourites'),
                  ),
                ),
                // Divider(color: Colors.black,height: 5,),

                Card(
                  color: AppColors.primaryColor,
                  shadowColor:Colors.black,
                  elevation: 5,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ),
                // Divider(color: Colors.black,height: 5,),

                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          title: const Text('Al-Hadith',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
          centerTitle: true,
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),
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
                  color: Colors.white,
                  size: 28,
                )),
          ],
        ),
        body: HomeDetails(),
        floatingActionButton: const FloatingActionBtn(),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}

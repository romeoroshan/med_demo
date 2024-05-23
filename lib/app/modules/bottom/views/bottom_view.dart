import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_solwyz/app/modules/home_page/views/home_page_view.dart';
import 'package:test_solwyz/app/modules/lab_test/views/lab_test_view.dart';
import 'package:test_solwyz/app/modules/profile/views/profile_view.dart';
import 'package:test_solwyz/app/modules/working/views/working_view.dart';

import '../controllers/bottom_controller.dart';

class BottomView extends GetView<BottomController> {
  BottomView({Key? key}) : super(key: key);
  @override
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => SizedBox(
      height: 54,
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.white,
          iconSize: 20,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showUnselectedLabels: true,
          onTap: landingPageController.changeTabIndex,
          currentIndex: landingPageController.tabIndex.value,
          selectedItemColor: Color.fromRGBO(72, 77, 181, .9),
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: "Category"),
            BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: "Lab Test"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
          ]
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    controller.context=context;
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar:
          buildBottomNavigationMenu(context, controller),
          body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomePageView(),
              WorkingView(),
              LabTestView(),
              ProfileView(),
            ],
          )),
        ));
  }
}

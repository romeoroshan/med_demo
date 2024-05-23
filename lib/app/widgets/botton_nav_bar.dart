import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_solwyz/app/routes/app_pages.dart';

class BottonNavBar extends GetView {
  const BottonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: Colors.white,
      iconSize: 20,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      showUnselectedLabels: true,
      currentIndex: 0,
        selectedItemColor: Color.fromRGBO(72, 77, 181, .9),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: "Lab Test"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ]
    );
  }
}

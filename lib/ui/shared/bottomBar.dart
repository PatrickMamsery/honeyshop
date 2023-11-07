import 'package:first_app/controllers/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  final controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          selectedItemColor: const Color.fromARGB(255, 209, 167, 41),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "My Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.more), label: "Privacy")
          ],
          onTap: (index) => controller.changePage(index),
          type: BottomNavigationBarType.fixed,
        ));
  }
}

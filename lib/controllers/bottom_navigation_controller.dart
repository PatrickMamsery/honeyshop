import 'package:first_app/ui/account/account_page.dart';
import 'package:first_app/ui/cart/cart_page.dart';
import 'package:first_app/ui/home/home_page.dart';
import 'package:first_app/ui/privacy/privacy_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    HomePage(),
    AccountPage(),
    CartPage(),
    PrivacyPage(),
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.to(pages[currentIndex.value]);
  }
}

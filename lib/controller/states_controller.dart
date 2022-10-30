import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app_block/view/screens/egypt_screens/business_screen.dart';
import 'package:new_app_block/view/screens/egypt_screens/science_screen.dart';
import 'package:new_app_block/view/screens/egypt_screens/sports_screen.dart';
import '../view/screens/egypt_screens/health_screen.dart';

class StatesController extends GetxController {
  int currentIndex = 0;

  List<Widget> egyptScreens = [
    SportsScreen(),
    ScienceScreen(),
    BusinessScreen(),
    HealthScreen(),
  ];

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.sports_soccer), label: 'Sports'),
    const BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.business), label: 'Business'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.health_and_safety), label: 'health'),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    update();
  }
}

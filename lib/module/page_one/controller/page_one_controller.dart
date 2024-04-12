import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOneController extends GetxController
    with GetSingleTickerProviderStateMixin {

//controller for tab
  late final TabController tabController;


//fun to initaialize the tab controller
  @override
  void onInit() {
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
    super.onInit();
  }


//fun to dispose the tab controller
  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }


//fun to toggle the tab to the index 2 (TAB 2)
  void toggleToTab2() {
    tabController.animateTo(1);
  }
}

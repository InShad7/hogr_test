import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwoController extends GetxController
    with GetSingleTickerProviderStateMixin {
//controller for tab
  late final TabController tabController;

  @override
  void onInit() {
    //initialize the controller for tab
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
    super.onInit();
  }

//dispose the controller
  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

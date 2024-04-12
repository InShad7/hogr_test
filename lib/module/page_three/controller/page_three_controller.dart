import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/page_three_model.dart';

class PageThreeController extends GetxController
    with GetSingleTickerProviderStateMixin {
// controller for tab
  late final TabController tabController;

//new instance for page 3 data from model class with empty list
  PageThreeModel pageData = PageThreeModel(items: []);

//json data for page 3 data
  final jsonData = {
    "page3": [
      "Samosas.",
      "Chaat.",
      "Pani Puri.",
      "Bhelpuri.",
      "Kachori.",
      "Chole Bhature.",
      "Matar Kulcha.",
      "Dosa.",
      "Milk.",
      "Bread.",
      "Butter.",
      "Cheese.",
      "Yoghurt.",
      "Sandwich.",
      "Pancake.",
      "Pie.",
      "Cake.",
      "Lemon.",
      "Pizza.",
      "Carrots.",
      "Grapes.",
      "Eggs.",
      "Oats.",
      "Pancakes.",
      "Crepes.",
      "Waffles.",
      "Idli.",
    ]
  };

  @override
  void onInit() {
    // fun to initialize tab
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
    // initialize pageData with the parsed data from the JSON object
    pageData = PageThreeModel.fromJson(jsonData);
    super.onInit();
  }

// dispose fun
  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

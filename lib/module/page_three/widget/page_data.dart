import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/module/page_three/controller/page_three_controller.dart';

import 'page_cards.dart';

class PageData extends StatelessWidget {
  const PageData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PageThreeController>(
        builder: (controller) => ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: controller.pageData.items.length,
          itemBuilder: (context, index) {
            return PageThreeCards(
              title: controller.pageData.items[index],
            );
          },
        ),
      ),
    );
  }
}

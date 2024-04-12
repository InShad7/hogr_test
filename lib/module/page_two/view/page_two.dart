import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/module/page_two/controller/page_two_controller.dart';

import '../../../utils/colors.dart';
import '../../page_one/widget/tab_one_widget.dart';
import '../../widget/custom_tab_bar.dart';
import '../../widget/tabbar_2.dart';
import '../../widget/tabbar_3.dart';

class PageTwo extends GetView<PageTwoController> {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.black,
        title: const Text('PAGE 2'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          TabOneWidget(
            title: 'PAGE 3',
            onTap: () {
              Get.toNamed('/page3');
            },
          ),
          const TabTwo(),
          const TabThree(),
        ],
      ),
      bottomNavigationBar: CustomTabBar(
        controller: controller,
      ),
    );
  }
}

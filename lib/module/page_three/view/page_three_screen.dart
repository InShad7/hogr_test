import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/module/page_three/widget/page_data.dart';

import '../../../utils/colors.dart';
import '../../widget/tabbar_3.dart';
import '../../widget/custom_tab_bar.dart';
import '../../widget/tabbar_2.dart';
import '../controller/page_three_controller.dart';

class PageThree extends GetView<PageThreeController> {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    final isTab = arguments?['isTab'] ?? true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.black,
        title: const Text('PAGE 3'),
        centerTitle: true,
        leading: isTab
            ? GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios_new),
              )
            : const CloseButton(),
      ),
      body: TabBarView(
        physics: isTab
            ? const ClampingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        controller: controller.tabController,
        children: const [
          PageData(),
          TabTwo(),
          TabThree(),
        ],
      ),
      bottomNavigationBar: isTab
          ? CustomTabBar(
              controller: controller,
            )
          : const SizedBox(),
    );
  }
}

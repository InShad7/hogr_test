import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/module/page_one/controller/page_one_controller.dart';
import 'package:hogr/module/page_one/widget/tab_one_widget.dart';
import 'package:hogr/utils/colors.dart';

import '../../widget/custom_tab_bar.dart';

class PageOne extends GetView<PageOneController> {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.black,
        title: const Text('PAGE 1'),
        centerTitle: true,
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: [
          TabOneWidget(
            title: 'PAGE 2',
            onTap: () {
              Get.toNamed(
                '/page2',
                arguments: {'isTab': true},
              );
            },
          ),
          TabOneWidget(
            title: 'PAGE 3',
            onTap: () {
              Get.toNamed(
                '/page3',
                arguments: {'isTab': false},
              );
            },
          ),
          TabOneWidget(
            title: 'TAB 2',
            onTap: () {
              controller.toggleToTab2();
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomTabBar(
        controller: controller,
      ),
    );
  }
}

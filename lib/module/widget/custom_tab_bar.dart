// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'build_tab_widget.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.controller,
  });

  final controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.grey,
      child: TabBar(
        controller: controller.tabController,
        indicatorColor: CustomColors.transparent,
        indicator: const BoxDecoration(
          color: CustomColors.black,
        ),
        labelPadding: const EdgeInsets.fromLTRB(1, 0, 1, 0),  
        labelColor: CustomColors.white,
        tabs: const [
          BuildTab(label: 'TAB 1'),
          BuildTab(label: 'TAB 2'),
          BuildTab(label: 'TAB 3'),
        ],
      ),
    );
  }
}

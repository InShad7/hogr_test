import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class PageThreeCards extends StatelessWidget {
  const PageThreeCards({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 3.5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: CustomColors.grey),
        color: CustomColors.page3cardColor,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: CustomColors.black,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hogr/utils/colors.dart';

class BuildTab extends StatelessWidget {
  const BuildTab({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 1.5,
              color: CustomColors.white,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

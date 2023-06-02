import 'package:flutter/material.dart';
import 'package:n8_default_project/utils/colors.dart';

class CenterDots extends StatelessWidget {
  const CenterDots({Key? key, required this.activeDotIndex}) : super(key: key);

  final int activeDotIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        if (activeDotIndex == index) {
          return activeDot();
        }
        return inActiveDot();
      }),
    );
  }

  Widget activeDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 20,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.C_407AFF,
      ),
    );
  }

  Widget inActiveDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.C_DADADA,
      ),
    );
  }
}
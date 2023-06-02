import 'package:flutter/material.dart';
import 'package:n8_default_project/utils/colors.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Ink(
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: AppColors.C_407AFF,
        ),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                  fontSize: 16,
                  fontFamily: "Inter"),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/on_boarding/widgets/activ_dots.dart';
import 'package:n8_default_project/ui/widgets/button_global.dart';

import '../../../utils/colors.dart';

class PageContent extends StatelessWidget {
  PageContent(
      {required this.imagePath,
      required this.text,
      required this.text2,
      required this.index,
      Key? key})
      : super(key: key);

  String imagePath = "";
  String text = "";
  String text2 = "";
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_E5E5E5,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.C_E5E5E5,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(38),
              child: SizedBox(
                  height: height * (280 / 812),
                  width: width,
                  child: Image.asset(imagePath)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height > 600 ? 24 : 18,
                    color: AppColors.black,
                    fontFamily: "Inter"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width > 375 ? 92 : 60),
              child: Text(
                text2,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height > 600 ? 14 : 12,
                    color: AppColors.C_87898E,
                    fontFamily: "Inter"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CenterDots(activeDotIndex: index),

          ],
        ),
      ),
    );
  }
}

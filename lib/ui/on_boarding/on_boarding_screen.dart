import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/on_boarding/widgets/activ_dots.dart';
import 'package:n8_default_project/ui/on_boarding/widgets/page_content.dart';
import 'package:n8_default_project/utils/icons.dart';

import '../../utils/colors.dart';
import '../widgets/button_global.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.C_E5E5E5,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [
                PageContent(
                  index: 0,
                    imagePath: AppImages.img,
                    text: "Manage your notes easily",
                    text2: """A completely easy way to manage and customize your notes."""),
                PageContent(
                  index: 1,
                    imagePath: AppImages.img_1,
                    text: "Organize your thougts",
                    text2: """Most beautiful note taking application."""),
                PageContent(
                  index: 2,
                    imagePath: AppImages.img_2,
                    text: "Create cards and easy styling",
                    text2: """Making your content legible has never been easier."""),
              ],
            ),
          ),
          GlobalButton(title: "Get Started", onTap: () {}),
          SizedBox(
            height: height * (70 / 812),
          )
        ],
      ),
    );
  }
}

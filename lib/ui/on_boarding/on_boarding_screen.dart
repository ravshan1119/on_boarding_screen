import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/on_boarding/widgets/page_content.dart';
import 'package:n8_default_project/utils/icons.dart';

import '../../utils/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    imagePath: AppImages.onBoarding,
                    text: "Spend & Save With Spare",
                    text2: """With spare, you can for bills, food, entertainment, utilities and still save"""),
                PageContent(
                  index: 1,
                    imagePath: AppImages.onBoarding2,
                    text: "Spare Is Easy & Secure",
                    text2: """spare is easy to use and all your transactions are secured"""),
                PageContent(
                  index: 2,
                    imagePath: AppImages.onBoarding3,
                    text: "Send Money With Spare",
                    text2: """Transfer money easily to friends and families on your contact list using spare """),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

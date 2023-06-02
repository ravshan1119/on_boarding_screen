import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/home/home_screen.dart';
import 'package:n8_default_project/ui/on_boarding/on_boarding_screen.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigateToHomescreen2(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.C_E5E5E5,
        ),
        body: Container(
          color: AppColors.C_E5E5E5,
          child: Center(
            child: SizedBox(
                width: width * (188 / 375),
                child: Image.asset(AppImages.iconText)),
          ),
        ));
  }

  void _navigateToHomescreen2(BuildContext context) async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return OnBoardingScreen();
      }));
    });
  }
}

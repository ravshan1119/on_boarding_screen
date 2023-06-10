import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/icons.dart';
import '../on_boarding/on_boarding_screen.dart';
class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _navigateToSplashScreen2Screen(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.C_407AFF,
        ),
        body: Container(
          color: AppColors.C_407AFF,
          child: Center(
            child: SizedBox(
                height: height * (132 / 812),
                child: Image.asset(AppImages.image)),
          ),
        ));
  }

  // void _navigateToWelcomeScreen(BuildContext context) async {
  //   Future.delayed(const Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (BuildContext context) {
  //           return const WelcomeScreen();
  //         },
  //       ),
  //     );
  //   });
  // }

  void _navigateToSplashScreen2Screen(BuildContext context) async {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const OnBoardingScreen();
      }));
    });
  }
}

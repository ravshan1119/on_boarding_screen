import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/splash/splash_screen2.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

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
                child: Image.asset(AppImages.icon)),
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
        return const SplashScreen2();
      }));
    });
  }
}

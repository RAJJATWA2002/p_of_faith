import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_of_faith/app/data/constants/image_constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      controller.count.value;
      return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            ImageConstants.imgAppLogo,
                height: 110.px,
                width: 110.px,
          ))
        ],
      ));
    });
  }
}

import 'package:get/get.dart';

import '../controllers/password_otp_screen_controller.dart';

class PasswordOtpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordOtpScreenController>(
      () => PasswordOtpScreenController(),
    );
  }
}

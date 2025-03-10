import 'package:get/get.dart';

import '../controllers/password_reset_screen_controller.dart';

class PasswordResetScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordResetScreenController>(
      () => PasswordResetScreenController(),
    );
  }
}

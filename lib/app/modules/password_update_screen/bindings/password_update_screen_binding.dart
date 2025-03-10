import 'package:get/get.dart';

import '../controllers/password_update_screen_controller.dart';

class PasswordUpdateScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordUpdateScreenController>(
      () => PasswordUpdateScreenController(),
    );
  }
}

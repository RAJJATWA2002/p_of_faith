import 'package:get/get.dart';

import '../controllers/nav_bar_screen_controller.dart';

class NavBarScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarScreenController>(
      () => NavBarScreenController(),
    );
  }
}

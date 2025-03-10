import 'package:get/get.dart';

import '../controllers/e_commerce_screen_controller.dart';

class ECommerceScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ECommerceScreenController>(
      () => ECommerceScreenController(),
    );
  }
}

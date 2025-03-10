import 'package:get/get.dart';

import '../controllers/delivery_address_screen_controller.dart';

class DeliveryAddressScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryAddressScreenController>(
      () => DeliveryAddressScreenController(),
    );
  }
}

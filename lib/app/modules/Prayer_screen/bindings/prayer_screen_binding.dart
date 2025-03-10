import 'package:get/get.dart';

import '../controllers/prayer_screen_controller.dart';

class PrayerScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrayerScreenController>(
      () => PrayerScreenController(),
    );
  }
}

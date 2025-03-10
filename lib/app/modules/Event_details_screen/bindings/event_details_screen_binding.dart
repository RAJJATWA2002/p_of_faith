import 'package:get/get.dart';

import '../controllers/event_details_screen_controller.dart';

class EventDetailsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventDetailsScreenController>(
      () => EventDetailsScreenController(),
    );
  }
}

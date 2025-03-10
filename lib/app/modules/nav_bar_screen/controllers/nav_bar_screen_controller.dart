import 'dart:io';

import 'package:get/get.dart';
import 'package:p_of_faith/app/modules/E_commerce_screen/views/e_commerce_screen_view.dart';
import 'package:p_of_faith/app/modules/Event_screen/views/event_screen_view.dart';
import 'package:p_of_faith/app/modules/Prayer_screen/views/prayer_screen_view.dart';

import '../../../common/common_widgets.dart';
import '../../home/views/home_view.dart';

final selectedIndex = 0.obs;

class NavBarScreenController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  body() {
    switch (selectedIndex.value) {
      case 0:
        return const HomeView();
      case 1:
        return const PrayerScreenView();
      case 2:
        return const EventScreenView();
      case 3:
        return const ECommerceScreenView();
      case 4:
        return const HomeView();
    }
  }

  onClickBack() {
    CommonWidgets.showAlertDialog(
        title: "Exit App",
        content: "Do you want to Exit from App",
        onPressedYes: () {
          print('Raj Jatwa');
          exit(0);
        });
  }
}

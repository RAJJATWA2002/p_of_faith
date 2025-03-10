import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PasswordOtpScreenController extends GetxController {
  TextEditingController pin = TextEditingController();

  final count = 0.obs;
  final showLoading = false.obs;

  Map<String, String?> parameter = Get.parameters;
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
  void clickOnSubmitButton() {
    Get.toNamed(Routes.PASSWORD_UPDATE_SCREEN);
  }

}

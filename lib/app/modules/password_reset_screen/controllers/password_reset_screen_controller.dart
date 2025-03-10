import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PasswordResetScreenController extends GetxController {

  final isEmail = false.obs;
  final count = 0.obs;
  final showLoading = false.obs;

  TextEditingController emailController = TextEditingController();
  FocusNode focusEmail = FocusNode();

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

  void clickOnSubmitButton() {
    Get.toNamed(Routes.PASSWORD_OTP_SCREEN);
  }

  void increment() => count.value++;
}

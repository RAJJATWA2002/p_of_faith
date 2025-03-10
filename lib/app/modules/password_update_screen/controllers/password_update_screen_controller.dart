import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PasswordUpdateScreenController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnfPasswordController = TextEditingController();
  FocusNode focusNodePassword = FocusNode();
  FocusNode focusNodeCnfPassword = FocusNode();

  final isPassword = false.obs;
  final isCnfPassword = false.obs;
  final isCheck = false.obs;
  final count = 0.obs;
  final passwordHide = true.obs;
  final cnfPasswordHide = true.obs;
  final showLoading = false.obs;

  void startListener() {
    focusNodePassword.addListener(onFocusChange);
    focusNodeCnfPassword.addListener(onFocusChange);
  }

  void onFocusChange() {
    isPassword.value = focusNodePassword.hasFocus;
    isCnfPassword.value = focusNodeCnfPassword.hasFocus;
  }

  Map<String, String?> parameter = Get.parameters;

  @override
  void onInit() {
    super.onInit();
    startListener();
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

  clickOnPasswordEyeButton() {
    passwordHide.value = !passwordHide.value;
    increment();
  }
  clickOnCnfPasswordEyeButton() {
    cnfPasswordHide.value = !cnfPasswordHide.value;
    increment();
  }


  void clickOnConfirmButton() {
    ///Get.offNamedUntil(Routes.SIGN_IN_SCREEN, (route) => false);
    Get.toNamed(Routes.NAV_BAR_SCREEN);
  }
}

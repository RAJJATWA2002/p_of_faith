import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../common/common_widgets.dart';
import '../../../data/apis/api_constants/api_key_constants.dart';
import '../../../routes/app_pages.dart';

class SignInScreenController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  final showLoading = false.obs;
  final countryDailCode = '+49'.obs;

  final count = 0.obs;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  FocusNode focusEmail = FocusNode();
  FocusNode focusPassword = FocusNode();
  final isEmail = false.obs;
  final isPassword = false.obs;
  final passwordHide = true.obs;

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

  void startListener() {
    focusEmail.addListener(onFocusChange);
    focusPassword.addListener(onFocusChange);
  }

  void onFocusChange() {
    isEmail.value = focusEmail.hasFocus;
    isPassword.value = focusPassword.hasFocus;
  }

  clickOnPasswordEyeButton() {
    passwordHide.value = !passwordHide.value;
    increment();
  }

  clickOnCountryCode({required CountryCode value}) {
    countryDailCode.value = value.dialCode.toString();
  }

  clickOnSignUpButton() {
    Get.toNamed(Routes.SIGN_UP_SCREEN);
  }

  clickOnForgotPasswordButton() {
    // Get.toNamed(Routes.PASSWORD_RESET);
  }

  clickOnContinueButton() async {
    if (!phoneController.text.trim().isNotEmpty) {
      // try {
      //   showLoading.value = true;
      //   Map<String, String> bodyParams = {
      //     ApiKeyConstants.mobile: phoneController.text,
      //     ApiKeyConstants.countryCode: countryDailCode.value.toString()
      //   };
      //   SendOtpModel? sendOtpModel =
      //   await ApiMethods.sendOtpForLogin(bodyParams: bodyParams);
      //   if (sendOtpModel != null && sendOtpModel.status != '0') {
      //     showLoading.value = false;
      //     Map<String, String> data = {
      //       ApiKeyConstants.otp: sendOtpModel.result.toString() ?? '',
      //       ApiKeyConstants.mobile: phoneController.text.toString(),
      //       ApiKeyConstants.countryCode: countryDailCode.value.toString(),
      //     };
      //     Get.toNamed(Routes.OTP, parameters: data);
      //   } else {
      //     CommonWidgets.snackBarView(title: sendOtpModel!.message!);
      //   }
      // } catch (e) {
      //   showLoading.value = false;
      //   CommonWidgets.snackBarView(title: 'Some things wrong...');
      // }
      showLoading.value = false;
    } else {
      CommonWidgets.snackBarView(title: 'Enter phone number....');
    }
  }

  void increment() => count.value++;
}

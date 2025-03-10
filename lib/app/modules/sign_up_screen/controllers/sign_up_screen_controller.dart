import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/date_picker.dart';
import '../../../routes/app_pages.dart';

class SignUpScreenController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  final showLoading = false.obs;
  final countryDailCode = '+49'.obs;

  final count = 0.obs;
  final isCheck = false.obs;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  FocusNode focusEmail = FocusNode();
  FocusNode focusPassword = FocusNode();
  FocusNode focusFullName = FocusNode();
  FocusNode focusDob = FocusNode();

  final isEmail = false.obs;
  final isPassword = false.obs;
  final passwordHide = true.obs;
  final fullNameHide = true.obs;
  final dobHide = true.obs;
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
    focusFullName.addListener(onFocusChange);
    focusEmail.addListener(onFocusChange);
    focusPassword.addListener(onFocusChange);
    focusDob.addListener(onFocusChange);
  }

  void onFocusChange() {
    fullNameHide.value = focusFullName.hasFocus;
    isEmail.value = focusEmail.hasFocus;
    isPassword.value = focusPassword.hasFocus;
    dobHide.value = focusDob.hasFocus;
  }

  clickOnPasswordEyeButton() {
    passwordHide.value = !passwordHide.value;
    increment();
  }


  clickOnCountryCode({required CountryCode value}) {
    countryDailCode.value = value.dialCode.toString();
  }

  clickOnDate(int index) async {
    final DateTime? picked = await PickDate.pickDateView(color: primaryColor);
    if (picked != null &&
        picked.microsecondsSinceEpoch >=
            DateTime.now().subtract(Duration(days: 1)).microsecondsSinceEpoch) {
      if (index == 0) {
        dobController.text = DateFormat('MM/dd/yyyy').format(picked);
      }
    } else {
      CommonWidgets.showMyToastMessage(
          'You can not create event in past date.');
    }
  }


  clickOnSignUpButton() {
    Get.toNamed(Routes.SIGN_UP_SCREEN);
  }

  clickOnForgotPasswordButton() {
    // Get.toNamed(Routes.PASSWORD_RESET);
  }

  void clickOnPrivacyPolicy() {
    // Get.toNamed(Routes.PRIVACY_POLICY);
  }

  void clickOnTermsAndServices() {
    // Get.toNamed(Routes.TERM_CONDITION);
  }

  void clickOnLogin() {
    Get.back();
  }

  clickOnContinueButton() async {
    if (phoneController.text.trim().isNotEmpty) {
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
      Get.toNamed(Routes.PASSWORD_RESET_SCREEN);
     // CommonWidgets.snackBarView(title: 'Enter phone number....');
    }
  }


  void increment() => count.value++;
}

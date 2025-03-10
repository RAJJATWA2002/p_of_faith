import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_of_faith/app/common/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_widgets.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sign_in_screen_controller.dart';

class SignInScreenView extends GetView<SignInScreenController> {
  const SignInScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        controller.count.value;
        return SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.px),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.px,
                  ),
                  Image.asset(
                    ImageConstants.imgAppLogo,
                    height: 110.px,
                    width: 110.px,
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      StringConstants.welcomMassage,
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: MyTextStyle.titleStyle24bb,
                    ),
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                  CommonWidgets.commonTextFieldForLoginSignUP(
                      focusNode: controller.focusEmail,
                      controller: controller.emailController,
                      isCard: controller.isEmail.value,
                      hintText: StringConstants.emailAddress,
                      hintStyle: MyTextStyle.titleStyle14b,
                      style: MyTextStyle.titleStyle14bb,
                      keyboardType: TextInputType.emailAddress,
                      borderRadius: 15.px,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      prefixIcon: CommonWidgets.appIcons(
                          assetName: IconConstants.icEmail,
                          width: 20.px,
                          height: 20.px,
                          fit: BoxFit.fill)),
                  SizedBox(
                    height: 20.px,
                  ),
                  CommonWidgets.commonTextFieldForLoginSignUP(
                    obscureText: controller.passwordHide.value,
                    focusNode: controller.focusPassword,
                    maxLines: 1,
                    controller: controller.passwordController,
                    isCard: controller.isPassword.value,
                    hintText: StringConstants.password,
                    hintStyle: MyTextStyle.titleStyle14b,
                    style: MyTextStyle.titleStyle14bb,
                    keyboardType: TextInputType.visiblePassword,
                    borderRadius: 15.px,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    prefixIcon: CommonWidgets.appIcons(
                        assetName: IconConstants.icLock,
                        width: 15.px,
                        height: 20.px,
                        fit: BoxFit.fill),
                    suffixIcon: GestureDetector(
                      onTap: () => controller.clickOnPasswordEyeButton(),
                      child: Icon(
                        controller.passwordHide.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: hintColor,
                        size: 20.px,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.px,
                  ),
                  Text(
                    StringConstants.forgotYourPassword,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30.px,
                  ),
                  CommonWidgets.commonElevatedButton(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {
                        FocusManager.instance.primaryFocus!.unfocus();
                        // Get.toNamed(Routes.SIGN_UP_SCREEN);
                        // controller.clickOnContinueButton();
                        Get.offNamed(Routes.NAV_BAR_SCREEN);
                      },
                      child: Text(
                        StringConstants.signIn,
                        style: MyTextStyle.titleStyle20bw,
                      ),
                      showLoading: controller.showLoading.value),
                  SizedBox(
                    height: 30.px,
                  ),
                  InkWell(
                    onTap: () {
                      controller.clickOnSignUpButton();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringConstants.dotHaveAnAccount,
                          style: TextStyle(
                              color: hintColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5.px,
                        ),
                        Text(
                          StringConstants.signUp,
                          style: TextStyle(
                              color: goldAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45.px,
                  ),
                  Text(
                    StringConstants.or,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 45.px,
                  ),
                  Image.asset(
                    IconConstants.icGoogle,
                    height: 25.px,
                    width: 25.px,
                  ),
                  SizedBox(
                    height: 30.px,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

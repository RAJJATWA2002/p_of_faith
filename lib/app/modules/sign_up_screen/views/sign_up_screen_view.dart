import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/sign_up_screen_controller.dart';

class SignUpScreenView extends GetView<SignUpScreenController> {
  const SignUpScreenView({super.key});

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
                    height: 30.px,
                  ),
                  Text(
                    StringConstants.createYourAccount,
                    textAlign: TextAlign.center,
                    style: MyTextStyle.titleStyle24bb,
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                  CommonWidgets.commonTextFieldForLoginSignUP(
                      focusNode: controller.focusFullName,
                      controller: controller.fullNameController,
                      isCard: controller.fullNameHide.value,
                      hintText: StringConstants.fullName,
                      hintStyle: MyTextStyle.titleStyle14b,
                      style: MyTextStyle.titleStyle14bb,
                      keyboardType: TextInputType.name,
                      borderRadius: 15.px,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      prefixIcon: CommonWidgets.appIcons(
                          assetName: IconConstants.icProfile,
                          width: 20.px,
                          height: 20.px,
                          fit: BoxFit.fill)),
                  SizedBox(
                    height: 20.px,
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
                      focusNode: controller.focusDob,
                      controller: controller.dobController,
                      isCard: controller.dobHide.value,
                      hintText: StringConstants.dob,
                      hintStyle: MyTextStyle.titleStyle14b,
                      style: MyTextStyle.titleStyle14bb,
                      keyboardType: TextInputType.datetime,
                      borderRadius: 15.px,
                      readOnly: true,
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      prefixIcon: CommonWidgets.appIcons(
                          assetName: IconConstants.icCalendar,
                          width: 20.px,
                          height: 20.px,
                          fit: BoxFit.fill),
                  onTap: (){
                    controller.clickOnDate(0);
                  }),
                  SizedBox(
                    height: 20.px,
                  ),
                  CommonWidgets.commonTextFieldForLoginSignUP(
                    obscureText: controller.passwordHide.value,
                      focusNode: controller.focusPassword,
                      controller: controller.passwordController,
                      isCard: controller.isPassword.value,
                      hintText: StringConstants.password,
                      maxLines: 1,
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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.isCheck.value = !controller.isCheck.value;
                        },
                        child: Icon(
                          controller.isCheck.value
                              ? Icons.check_circle
                              : Icons.circle_outlined,
                          size: 25.px,
                          color: goldAccent,
                        ),
                      ),
                      SizedBox(
                        width: 10.px,
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: StringConstants.iAgreeToThe,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff909090),
                                      fontSize: 14.px)),
                              TextSpan(
                                  text: StringConstants.termsOfService,
                                  style:  TextStyle(
                                      color: goldAccent,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      controller.clickOnTermsAndServices();
                                    }),
                              TextSpan(
                                  text: StringConstants.and,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff909090),
                                      fontSize: 14.px)),
                              TextSpan(
                                  text: StringConstants.privacyPolicy,
                                  style:  TextStyle(
                                      color: goldAccent,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      controller.clickOnPrivacyPolicy();
                                    }),
                            ],
                          ),
                        ),
                      )
                    ],
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
                        controller.clickOnContinueButton();
                      },
                      child: Text(
                        StringConstants.signUp,
                        style: MyTextStyle.titleStyle20bw,
                      ),
                      showLoading: controller.showLoading.value),
                  SizedBox(
                    height: 15.px,
                  ),
                  CommonWidgets.commonElevatedButton(
                      onPressed: () {
                        controller.clickOnLogin();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringConstants.alreadyHaveAnAccount,
                            style: MyTextStyle.titleStyle16b,
                          ),
                          Text(
                            StringConstants.login,
                            style: TextStyle(
                                color: goldAccent,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      buttonColor: Colors.transparent),
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

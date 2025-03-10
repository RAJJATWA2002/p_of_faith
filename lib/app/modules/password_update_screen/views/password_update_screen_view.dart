import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/password_update_screen_controller.dart';

class PasswordUpdateScreenView extends GetView<PasswordUpdateScreenController> {
  const PasswordUpdateScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: primary3Color,
        appBar: CommonWidgets.appBar(title: ''),
        body: Obx(() {
          controller.count.value;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal:24.px),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.px,
                ),
                Text(
                  StringConstants.createNewPassword,
                  style: MyTextStyle.titleStyle24bb,
                  textAlign: TextAlign.center,
                ),
                Text(
                  StringConstants.yourNewPasswordMustBeDifferentFromPreviousUsedPasswords,
                  style: MyTextStyle.titleStyle14blb,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20.px,
                ),
                CommonWidgets.commonTextFieldForLoginSignUP(
                  obscureText: controller.passwordHide.value,
                  focusNode: controller.focusNodePassword,
                  maxLines: 1,
                  controller: controller.passwordController,
                  isCard: controller.isPassword.value,
                  hintText: StringConstants.newPassword,
                  hintStyle: MyTextStyle.titleStyle14b,
                  style: MyTextStyle.titleStyle14bb,
                  keyboardType: TextInputType.visiblePassword,
                  borderRadius: 15.px,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  prefixIcon: CommonWidgets.appIcons(
                      assetName: IconConstants.icLock,
                      width:15.px,
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
                  height: 20.px,
                ),


                CommonWidgets.commonTextFieldForLoginSignUP(
                  obscureText: controller.cnfPasswordHide.value,
                  focusNode: controller.focusNodeCnfPassword,
                  maxLines: 1,
                  controller: controller.cnfPasswordController,
                  isCard: controller.isCnfPassword.value,
                  hintText: StringConstants.confirmPassword,
                  hintStyle: MyTextStyle.titleStyle14b,
                  style: MyTextStyle.titleStyle14bb,
                  keyboardType: TextInputType.visiblePassword,
                  borderRadius: 15.px,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  prefixIcon: CommonWidgets.appIcons(
                      assetName: IconConstants.icLock,
                      width:15.px,
                      height: 20.px,
                      fit: BoxFit.fill),
                  suffixIcon: GestureDetector(
                    onTap: () => controller.clickOnCnfPasswordEyeButton(),
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
                  height: 30.px,
                ),
                const Spacer(),
                CommonWidgets.commonElevatedButton(
                    onPressed: () {
                      controller.clickOnConfirmButton();
                    },
                    child: Text(
                      StringConstants.save,
                      style: MyTextStyle.titleStyle16bw,
                    ),
                    showLoading: controller.showLoading.value),
                SizedBox(
                  height: 60.px,
                ),
              ],
            ),
          );
        }));
  }
}

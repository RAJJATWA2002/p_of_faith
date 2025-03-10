import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/password_otp_screen_controller.dart';

class PasswordOtpScreenView extends GetView<PasswordOtpScreenController> {
  const PasswordOtpScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: primary3Color,
        appBar: CommonWidgets.appBar(title: ''),
        body: Obx(() {
          controller.count.value;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.px),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.px,
                ),
                Text(
                  StringConstants.checkYourMailCheckYourCellPhone,
                  style: MyTextStyle.titleStyle24bb,
                  textAlign: TextAlign.center,
                ),
                Text(
                  StringConstants.pleasePutThe4DigitsSentToYou,
                  style: MyTextStyle.titleStyle14blb,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 70.px,
                ),
                CommonWidgets.commonOtpView(
                    controller: controller.pin, width: 64.px, height: 64.px),
                CommonWidgets.appIcons(
                    assetName: ImageConstants.imgOtp,
                    height: 250.px,
                    width: MediaQuery.of(context).size.width),
                const Spacer(),
                CommonWidgets.commonElevatedButton(
                    onPressed: () {
                      controller.clickOnSubmitButton();
                    },
                    child: Text(
                      StringConstants.submit,
                      style: MyTextStyle.titleStyle18bw,
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

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:p_of_faith/app/common/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/common_widgets.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/password_reset_screen_controller.dart';

class PasswordResetScreenView extends GetView<PasswordResetScreenController> {
  const PasswordResetScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //backgroundColor: primaryColor,
        appBar: CommonWidgets.appBar(title: "",
        wantBackButton: true),
        body: Obx(() {
          controller.count.value;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.px),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.px,
                ),
                Text(
                  StringConstants.passwordReset,
                  style: MyTextStyle.titleStyle24bb,
                  textAlign: TextAlign.center,
                ),
                Text(
                  StringConstants.pleasePutYourMobileNumberToResetYourPassword,
                  style: TextStyle(
                      color: primaryLiteText,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 35.px,
                ),


                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 184.px,
                        padding: EdgeInsets.only(top: 22.px,bottom: 10.px,left: 40.px,right: 40.px
                        ),
                        width: 170.px,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 1.px,
                            color: primaryColor
                          ),
                          color: primary3Color
                        ),

                        child: Column(
                          children: [
                            Container(
                              height: 80.px,
                              width: 80.px,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryColor
                              ),

                              child: Image.asset(IconConstants.icMessage),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              StringConstants.sms,
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              StringConstants.hintNumber,
                              softWrap: false,
                              style: TextStyle(
                                  color: primaryLiteText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 184.px,
                        padding: EdgeInsets.only(top: 22.px,bottom: 10.px,left: 40.px,right: 40.px
                        ),
                        width: 170.px,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 1.px,
                                color: primaryColor
                            ),
                            color: primary3Color
                        ),

                        child: Column(
                          children: [
                            Container(
                              height: 80.px,
                              width: 80.px,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: primaryColor
                              ),

                              child: Image.asset(IconConstants.icMailPassReset),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              StringConstants.email,
                              style: TextStyle(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              StringConstants.hintEmail,
                              softWrap: false,
                              style: TextStyle(
                                  color: primaryLiteText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start,
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Container(
                //   padding: EdgeInsets.all(8.px),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20.px),
                //       border: Border.all(
                //           color: controller.isEmail.value
                //               ? primaryColor
                //               : Colors.grey.withOpacity(0.5))),
                //   child: Row(
                //     children: [
                //       CommonWidgets.appIcons(
                //           assetName: IconConstants.icEmail,
                //           height: 76.px,
                //           width: 76.px),
                //       SizedBox(
                //         width: 5.px,
                //       ),
                //       Expanded(
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               StringConstants.email,
                //               style: MyTextStyle.titleStyle16bb,
                //               textAlign: TextAlign.center,
                //             ),
                //             TextFormField(
                //               focusNode: controller.focusEmail,
                //               controller: controller.emailController,
                //               style: MyTextStyle.titleStyle14bb,
                //               decoration: InputDecoration(
                //                 hintText: 'joh****@gmail.com',
                //                 hintStyle: MyTextStyle.titleStyle14b,
                //                 focusedBorder: InputBorder.none,
                //                 enabledBorder: InputBorder.none,
                //                 errorBorder: InputBorder.none,
                //                 disabledBorder: InputBorder.none,
                //               ),
                //             )
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
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

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/nav_bar_screen_controller.dart';

class NavBarScreenView extends GetView<NavBarScreenController> {
  const NavBarScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Obx(() {
      controller.count.value;
      return WillPopScope(
        onWillPop: () async {
          return await controller.onClickBack();
        },
        child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: controller.body(),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: primary3Color,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 18.px, vertical: 8.px),
                child: GNav(
                  padding:
                  EdgeInsets.symmetric(horizontal: 2.px, vertical: 4.px),
                  tabs: [
                    button(
                        selectImage: IconConstants.icBibleFill,
                        image: IconConstants.icBible,
                        text: StringConstants.bible.tr,
                        index: 0),
                    button(
                        selectImage: IconConstants.icPrayerFill,
                        image: IconConstants.icPrayer,
                        text: StringConstants.prayer.tr,
                        index: 1),
                    button(
                        selectImage: IconConstants.icEventFill,
                        image: IconConstants.icEvent,
                        text: StringConstants.event.tr,
                        index: 2),
                    button(
                        selectImage: IconConstants.icEComFill,
                        image: IconConstants.icECom,
                        text: StringConstants.eCommerce,
                        index: 3),
                    button(
                        selectImage: IconConstants.icSettingFill,
                        image: IconConstants.icSetting,
                        text: StringConstants.setting.tr,
                        index: 4),
                  ],
                  selectedIndex: selectedIndex.value,
                  onTabChange: (index) {
                    selectedIndex.value = index;
                    controller.increment();
                  },
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  button({
    required String selectImage,
    required String image,
    required String text,
    required int index,
  }) {
    return GButton(
      icon: Icons.add,
      leading: Column(
        children: [
          CommonWidgets.appIcons(
              assetName: selectedIndex.value == index ? selectImage : image,
              width: 25.px,
              height: 25.px,
              fit: BoxFit.fill),
          SizedBox(
            height: 5.px,
          ),
          Text(
            text,
            style: selectedIndex.value == index
                ? MyTextStyle.titleStyleCustom(
              12,
              FontWeight.w500,
              primaryColor,
            )
                : MyTextStyle.titleStyleCustom(
                12, FontWeight.w400, const Color(0xFF7B6F72)),
          )
        ],
      ),
    );
  }

}

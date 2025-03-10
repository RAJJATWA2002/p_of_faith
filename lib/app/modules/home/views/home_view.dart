import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/colors.dart';
import '../../../common/common_widgets.dart';
import '../../../common/text_styles.dart';
import '../../../data/constants/icons_constant.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.px, vertical: 10.px),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Daniel',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'Salsa',
                            fontSize: 26,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        StringConstants.welcom,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Salsa',
                            fontSize: 26,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CommonWidgets.appIcons(
                          assetName: IconConstants.inEnglish,
                          height: 24.px,
                          width: 24.px),
                      SizedBox(
                        width: 8.px,
                      ),
                      GestureDetector(
                        onTap: () {
                          //   controller.clickOnVoiceIcon();
                        },
                        child: Text(
                          StringConstants.english,
                          style: TextStyle(
                              color: black,
                              fontFamily: 'Salsa',
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 8.px,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 34.px),
              Container(
                height: 55.px,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20.px),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.px),
                  color: primary3Color,
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withOpacity(0.15),
                      offset: const Offset(0.0, 16.0),
                      blurRadius: 40,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    CommonWidgets.appIcons(
                      assetName: IconConstants.icSearch,
                      height: 20.px,
                      width: 20.px,
                    ),
                    SizedBox(width: 10.px),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: StringConstants.search,
                          hintStyle: MyTextStyle.titleStyle14b,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.px,
              ),
              Expanded(child: showOfferList()),
            ],
          ),
        ),
      ),
    );
  }

  Widget showOfferList() {
    return GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: controller.offerList.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.px,
          crossAxisSpacing: 10.px,
          childAspectRatio: 160 / 231,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //  controller.clickOnItem(index);
            },
            child: Container(
              height: 310.px,
              width: 180.px,
              padding: EdgeInsets.all(8.px),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.px),
                  color: primary3Color,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      offset: const Offset(0, 0),
                      blurRadius: 14,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonWidgets.appIcons(
                      assetName: controller.offerList[index]['image'] ?? '',
                      height: 160.px,
                      width: 164.px,
                      fit: BoxFit.cover,
                      borderRadius: 15.px),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.offerList[index]['name'] ?? '',
                            style: TextStyle(
                                color: bibleTextColor,
                                fontFamily: 'Salsa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            controller.offerList[index]['subTitle'] ?? '',
                            style: TextStyle(
                                color: bibleTextSubColor,
                                fontFamily: 'Salsa',
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        IconConstants.icPlayButton,
                        height: 24.px,
                        width: 24.px,
                      ),
                      // CommonWidgets.appIcons(
                      //     assetName: IconConstants.playButton,
                      //     height: 24.px,
                      //     width: 24.px),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

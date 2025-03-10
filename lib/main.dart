import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/common/language_translate.dart';
import 'app/common/theme_data.dart';
import 'app/routes/app_pages.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(
    GetMaterialApp(
      title: "Path Of Faith",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: MThemeData.themeData(),
      translations: LanguageTranslate(),
      fallbackLocale: const Locale('en', 'US'),
    ),
  );
}

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/apis/api_constants/api_key_constants.dart';
import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {

  final count = 0.obs;
  SharedPreferences? prefs;


  @override
  void onInit() {
    super.onInit();
    manageSession();
  }

  @override
  void onReady() {
    super.onReady();
  }

  manageSession() async {
    await Future.delayed(const Duration(seconds: 3));
    print("TOKEN:::::::::::${prefs?.getString(ApiKeyConstants.token)}");
    if (prefs?.getString(ApiKeyConstants.token) != null) {
      Get.offAndToNamed(Routes.NAV_BAR_SCREEN);
    } else {
      Get.offAndToNamed(Routes.SIGN_IN_SCREEN);
    }
  }


  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

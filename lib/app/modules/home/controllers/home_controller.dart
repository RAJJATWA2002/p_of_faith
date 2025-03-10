import 'package:get/get.dart';

import '../../../data/constants/image_constants.dart';

class HomeController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  List<Map<String, String>> offerList = [
    {
      'name': 'Genesis',
      'image': ImageConstants.imgBible,
      'subTitle': 'Martin Franci'
    },
    {
      'name': 'Exodus',
      'image': ImageConstants.imgBible,
      'subTitle': 'Cooper Carder'
    },
    {
      'name': 'Leviticus',
      'image': ImageConstants.imgBible,
      'subTitle': 'Leo Siphron'
    },
    {
      'name': 'Deuteronomy',
      'image': ImageConstants.imgBible,
      'subTitle': 'Tiana Kenter'
    },
    {
      'name': 'Leviticus',
      'image': ImageConstants.imgBible,
      'subTitle': 'Leo Siphron'
    },
    {
      'name': 'Deuteronomy',
      'image': ImageConstants.imgBible,
      'subTitle': 'Tiana Kenter'
    },
  ];


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

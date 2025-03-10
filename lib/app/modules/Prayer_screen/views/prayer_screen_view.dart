import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/prayer_screen_controller.dart';

class PrayerScreenView extends GetView<PrayerScreenController> {
  const PrayerScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PrayerScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PrayerScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

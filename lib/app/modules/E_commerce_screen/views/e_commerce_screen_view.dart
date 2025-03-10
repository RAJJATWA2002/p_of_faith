import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/e_commerce_screen_controller.dart';

class ECommerceScreenView extends GetView<ECommerceScreenController> {
  const ECommerceScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ECommerceScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ECommerceScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

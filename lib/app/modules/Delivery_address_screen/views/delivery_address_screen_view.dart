import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/delivery_address_screen_controller.dart';

class DeliveryAddressScreenView
    extends GetView<DeliveryAddressScreenController> {
  const DeliveryAddressScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliveryAddressScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeliveryAddressScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

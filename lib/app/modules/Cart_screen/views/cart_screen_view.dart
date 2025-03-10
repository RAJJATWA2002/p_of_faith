import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_screen_controller.dart';

class CartScreenView extends GetView<CartScreenController> {
  const CartScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          child: Text(
            'CartScreenView is working',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            controller.increment();
          },
        ),
      ),
    );
  }
}

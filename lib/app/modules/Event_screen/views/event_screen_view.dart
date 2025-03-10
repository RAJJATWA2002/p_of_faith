import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_screen_controller.dart';

class EventScreenView extends GetView<EventScreenController> {
  const EventScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EventScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EventScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

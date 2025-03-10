import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_details_screen_controller.dart';

class EventDetailsScreenView extends GetView<EventDetailsScreenController> {
  const EventDetailsScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EventDetailsScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EventDetailsScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

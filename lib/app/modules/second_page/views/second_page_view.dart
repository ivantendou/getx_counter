import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_counter_app/app/controllers/counter_controller.dart';

import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  const SecondPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final counterController = Get.find<CounterController>();
    
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Obx(() => Text('Counter (same): ${counterController.count}', style: TextStyle(fontSize: 30))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

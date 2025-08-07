import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_counter_app/app/controllers/counter_controller.dart';
import 'package:getx_counter_app/app/routes/app_pages.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = Get.find<CounterController>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home - GetX Counter')),
      body: Center(
        child: Obx(() => Text('Counter: ${counterController.count}', style: const TextStyle(fontSize: 30))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          onPressed: () => Get.toNamed(Routes.SECOND_PAGE),
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}

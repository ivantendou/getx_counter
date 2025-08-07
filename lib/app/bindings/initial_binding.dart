import 'package:get/get.dart';
import 'package:getx_counter_app/app/controllers/counter_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
  
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/app/bindings/initial_binding.dart';
import 'package:getx_counter_app/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialBinding: InitialBinding(),
      initialRoute: Routes.HOME_PAGE,
      getPages: AppPages.routes,
    ),
  );
}

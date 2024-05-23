import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_solwyz/app/modules/login/views/login_view.dart';

import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  late BuildContext context;
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3),(){
      Get.offAllNamed(Routes.LOGIN);
    });
    final box=GetStorage();
    box.write('num', '8089117563');
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_solwyz/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:test_solwyz/app/modules/home_page/views/home_page_view.dart';
import 'package:test_solwyz/app/number_data.dart';
import 'package:test_solwyz/app/routes/app_pages.dart';
import 'package:test_solwyz/app/widgets/botton_nav_bar.dart';

class LoginController extends GetxController {
  late BuildContext context;
  TextEditingController number = TextEditingController();
  RxString error = ''.obs;

  void checkError(String value) {
    print("funtion called");
    if (value.length == 10) {
      error.value = '';
    } else if (!value.isPhoneNumber) {
      error.value = 'Please enter a valid mobile number';
    } else {
      error.value = 'Enter a 10 digit mobile number';
      print(error.value);
    }
  }

  getNumber() {
    final num = number.text;
    print(num);
    final data = NumberData(num: num);
    final box = GetStorage();
    // box.write('num', data.toJson());
    // print("Number inputted");
    final stored = box.read('num');
    print(stored + "     " + num);
    if (num == stored) {
      print("if");
      Get.offAllNamed(Routes.BOTTOM);
    } else {
      Get.snackbar(
        'Error',
        'Invalid User',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    print("Stored $stored");
  }

  //TODO: Implement LoginController

  final count = 0.obs;

  @override
  void onInit() {
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

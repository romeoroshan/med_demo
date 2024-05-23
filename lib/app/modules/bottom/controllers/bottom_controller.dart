import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomController extends GetxController {
  //TODO: Implement BottomController

  late BuildContext context;
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

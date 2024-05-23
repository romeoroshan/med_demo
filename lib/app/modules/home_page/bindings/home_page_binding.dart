import 'package:get/get.dart';
import 'package:test_solwyz/app/modules/home_page/providers/home_provider.dart';

import '../controllers/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
    Get.lazyPut<HomeProvider>(
          () => HomeProvider(),
    );
  }
}

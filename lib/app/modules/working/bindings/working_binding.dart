import 'package:get/get.dart';

import '../controllers/working_controller.dart';

class WorkingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkingController>(
      () => WorkingController(),
    );
  }
}

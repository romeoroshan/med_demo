import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_solwyz/app/widgets/botton_nav_bar.dart';

import '../controllers/lab_test_controller.dart';

class LabTestView extends GetView<LabTestController> {
  const LabTestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Center(
        child: Text(
          'Page is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

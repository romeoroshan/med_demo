import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_solwyz/app/widgets/botton_nav_bar.dart';

import '../controllers/working_controller.dart';

class WorkingView extends GetView<WorkingController> {
  const WorkingView({Key? key}) : super(key: key);
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

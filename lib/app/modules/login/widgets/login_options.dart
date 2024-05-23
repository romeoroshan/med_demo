import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_solwyz/app/modules/login/controllers/login_controller.dart';

class LoginOptions extends GetView {
  final String imgUrl;
  LoginController controller;
  LoginOptions({super.key,required this.imgUrl,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      height: MediaQuery.of(context).size.height * .07,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.2),
          spreadRadius: 3,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * .1,
            child: Image.asset(imgUrl)),
      ),
    );
  }
}

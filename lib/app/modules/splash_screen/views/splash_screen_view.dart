import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_solwyz/app/modules/login/views/login_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.context=context;
    double sWidth = MediaQuery.of(context).size.width;
    double sHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: Column()),
          Center(
            child: SizedBox(
              width: sWidth * .8,
              height: sHeight * .4,
              child: const Image(
                image: AssetImage('logo.png'),
              ),
            ),
          ),
          const Expanded(child: Column()),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(72, 77, 181, .9),
                  ),
                  children: [
                    TextSpan(text: "By continuing, you agree to our "),
                    TextSpan(
                      text: "Terms of Use",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: sHeight * .04,
          )
        ],
      ),
    );
  }
}

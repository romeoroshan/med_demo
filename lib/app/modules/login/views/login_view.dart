import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_solwyz/app/modules/login/widgets/login_options.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.context = context;
    double sWidth = MediaQuery.of(context).size.width;
    double sHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: SizedBox(
              width: sWidth * .8,
              height: sHeight * .4,
              child: const Image(
                image: AssetImage('logo.png'),
              ),
            ),
          ),
          const Text(
            "Get Started, Now",
            style: TextStyle(
                color: Color.fromRGBO(72, 77, 181, .9),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: sHeight * .04,
          ),
          SizedBox(
            width: sWidth * .8,
            child: TextField(
              controller: controller.number,
              onChanged: controller.checkError,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(224, 222, 222, .3),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                hintText: "Enter your phone number",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    margin: EdgeInsets.only(right: sWidth * .01),
                    width: sWidth * .25,
                    height: sHeight * .03,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: .5, color: Colors.grey),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Image(image: AssetImage('flag.png')),
                        ),
                        Text("+91")
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Obx(()=>Text(controller.error.value,style: TextStyle(color: Colors.red),)),
          SizedBox(
            height: sHeight * .02,
          ),
          SizedBox(
            width: sWidth * .8,
            height: sHeight * .065,
            child: OutlinedButton(
              onPressed: () {
                controller.getNumber();
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: const Color.fromRGBO(72, 77, 181, .9),
              ),
            ),
          ),
          SizedBox(
            height: sHeight * .03,
          ),
          SizedBox(
            width: sWidth * .9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: sWidth * .3,
                  height: 1,
                  color: Colors.grey,
                ),
                const Text(
                  "Or login with",
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  width: sWidth * .3,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: sHeight * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginOptions(
                imgUrl: "google.jpg",
                controller: controller,
              ),
              SizedBox(
                width: sWidth * .1,
              ),
              LoginOptions(
                imgUrl: "message.jpg",
                controller: controller,
              )
            ],
          ),
          SizedBox(
            height: sHeight * .04,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              Text(
                "Register Now",
                style: TextStyle(color: Color.fromRGBO(72, 77, 181, .9)),
              )
            ],
          ),
          SizedBox(
            height: sHeight * .01,
          ),
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

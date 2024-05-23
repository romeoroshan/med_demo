import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_solwyz/app/modules/home_page/controllers/home_page_controller.dart';

class ProductWidget extends GetView {
  HomePageController controller;
  String imgUrl;
  String title;

  ProductWidget(
      {super.key,
      required this.controller,
      required this.imgUrl,
      required this.title});

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    double sHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(sWidth * .01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(1, 1),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                width: sWidth * .13,
                height: sHeight * .06,
                child: Image.network(
                  imgUrl,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWxmWEVN4IptMiRXqq74unrih4XdAuYs6YfbeJ-xkuAg&s',fit: BoxFit.fill,);
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(title.split(' ').take(2).join(' '),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}

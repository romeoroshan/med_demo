import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:test_solwyz/app/modules/home_page/widgets/product_widget.dart';
import 'package:test_solwyz/app/widgets/botton_nav_bar.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    controller.context = context;
    double sWidth = MediaQuery.of(context).size.width;
    double sHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: sHeight * .015,
          ),
          const Center(
            child: Text(
              "Popular items",
              style: TextStyle(
                  color: Color.fromRGBO(72, 77, 181, .9),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: sHeight * .02,
          ),
          Obx(
            () => controller.isLoading == true
                ? Container(
              child: Center(
                  child: LoadingAnimationWidget.twistingDots(leftDotColor: Colors.blue, rightDotColor: Colors.black, size: 25),
              ),
            )
                : Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: controller.list.products!.length,
                        itemBuilder: (context, index) {
                          return ProductWidget(
                            controller: controller,
                            imgUrl: controller.list.products![index].imgUrl!,
                            title: controller.list.products![index].title!,
                          );
                        },
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

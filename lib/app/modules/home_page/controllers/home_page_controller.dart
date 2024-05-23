import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_solwyz/app/modules/home_page/models/home_model.dart';
import 'package:test_solwyz/app/modules/home_page/providers/home_provider.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  //TODO: Implement HomePageController
  late BuildContext context;
  HomeProvider provider = Get.isRegistered<HomeProvider>()
      ? Get.find<HomeProvider>()
      : Get.put(HomeProvider());

  HomeModel list = HomeModel();
  RxBool isLoading=false.obs;

  final count = 0.obs;

  @override
  void onInit() {

    getData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;


  Future getData() async {
    isLoading.value=true;
    update();

    print("function called");
    try {
      await provider.getList().then((value) {
        print("Value: ${value.statusCode}");
        if (value.statusCode == 200) {
          print(value.statusCode);
          list = HomeModel.fromJson(value.body);
          isLoading.value=false;
          update();
          print(list.toJson());
        } else {
          print("Code${value.statusCode}");
          isLoading.value=false;
          update();
        }
      });
    } catch (e) {
      print(e);
    }
  }
  Future<void> getData1() async {
    print("function called");
    try {
      final value = await http.get(Uri.parse('https://med-pharma.onrender.com/products'),
      );
      print(value.body);
      if (value.statusCode == 200) {
          print(value.statusCode);
          print(value.body);
          print(list);
        } else {
          print("Code${value.statusCode}");
        }

    } catch (e) {
      print(e);
    }
  }
}

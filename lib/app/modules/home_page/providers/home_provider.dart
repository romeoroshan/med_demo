import 'package:get/get.dart';

class HomeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultContentType = 'application/json';
    httpClient.maxAuthRetries = 3;
    httpClient.timeout = const Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) async => request);
  }

  Future<Response> getList() {
    return get("https://med-pharma.onrender.com/products",


    );

  }
}

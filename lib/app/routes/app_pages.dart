import 'package:get/get.dart';

import '../modules/bottom/bindings/bottom_binding.dart';
import '../modules/bottom/views/bottom_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/lab_test/bindings/lab_test_binding.dart';
import '../modules/lab_test/views/lab_test_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/working/bindings/working_binding.dart';
import '../modules/working/views/working_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.WORKING,
      page: () => const WorkingView(),
      binding: WorkingBinding(),
    ),
    GetPage(
      name: _Paths.LAB_TEST,
      page: () => const LabTestView(),
      binding: LabTestBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM,
      page: () => BottomView(),
      binding: BottomBinding(),
    ),
  ];
}

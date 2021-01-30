import 'package:get/get.dart';
import 'package:wr_ecommerce_app/bindings/home_screen_bindings.dart';
import 'package:wr_ecommerce_app/views/home/home_screen.dart';

import 'app_routes.dart';

class AppScreens {
  static final screens = [
    GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
        binding: HomeScreenBinding()),
  ];
}

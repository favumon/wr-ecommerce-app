import 'package:get/instance_manager.dart';
import 'package:wr_ecommerce_app/controllers/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}

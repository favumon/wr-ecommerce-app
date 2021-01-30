import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wr_ecommerce_app/routes/app_routes.dart';
import 'package:wr_ecommerce_app/routes/app_screens.dart';
import 'package:wr_ecommerce_app/views/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: homeScreen,
      getPages: AppScreens.screens,
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wr_ecommerce_app/controllers/home_screen_controller.dart';

class ProductCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeScreenController _controller = Get.find();

    return Obx(() {
      return SizedBox(
          height: 300.0,
          child: CarouselSlider.builder(
            itemCount: _controller.productcarouselItems.length,
            options: CarouselOptions(
              height: 400,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) =>
                  _controller.currentPage.value = index,
            ),
            itemBuilder: (BuildContext context, int itemIndex) => Container(
                child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(_controller
                        .productcarouselItems[itemIndex].carouseIImageUrl),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 150,
              width: double.infinity,
            )),
          ));
    });
  }
}

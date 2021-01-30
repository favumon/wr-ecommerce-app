import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wr_ecommerce_app/controllers/home_screen_controller.dart';
import 'package:wr_ecommerce_app/views/home/widgets/banner_image.dart';
import 'package:wr_ecommerce_app/views/home/widgets/product_carousel.dart';
import 'package:wr_ecommerce_app/views/home/widgets/product_list.dart';

import 'widgets/page_view_indicator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeScreenController _controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('WR Online'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: Stack(
                children: [
                  ProductCarousel(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(() {
                          return PageViewIndicator(
                            pageLength: _controller.productcarouselItems.length,
                            selectedIndex: _controller.currentPage.value,
                          );
                        })),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return _controller.bannerImageItems != null
                  ? BannerImage(
                      imageUrl: _controller.bannerImageItems[1].bannerImageUrl,
                    )
                  : Container();
            }),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discounts for you',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        FlatButton(
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text(
                              'View all',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 500, child: ProductList()),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(() {
                    return _controller.bannerImageItems != null
                        ? BannerImage(
                            imageUrl:
                                _controller.bannerImageItems[0].bannerImageUrl,
                          )
                        : Container();
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wr_ecommerce_app/controllers/home_screen_controller.dart';
import 'package:wr_ecommerce_app/utils/extensions.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeScreenController _controller = Get.find();
    return Obx(() {
      return CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: .78,
                children: List.generate(
                  _controller.productItems.length,
                  (index) => InkWell(
                    //  onTap: () => Get.to(ProductDetailsScreen()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    _controller.productItems[index].image),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: 180,
                          width: 160,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          _controller.productItems[index].rate.toCurrency(),
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          _controller.productItems[index].name,
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ],
      );
    });
  }
}

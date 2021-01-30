import 'package:get/get.dart';
import 'package:wr_ecommerce_app/core/models/banner_image_item.dart';
import 'package:wr_ecommerce_app/core/models/product_carouse_Item.dart';
import 'package:wr_ecommerce_app/core/models/product_item.dart';

class HomeScreenController extends GetxController {
  var productCarouselItems = <ProductCarouseItem>[].obs;
  var productItems = <ProductItem>[].obs;
  var bannerImageItems = <BannerImageItem>[].obs;

//The current page in Carousel that is selected
  var currentPage = 0.obs;

//Automaticaaly called when initialized
  @override
  void onInit() {
    loadProductcarouselItems();
    loadProductList();
    loadBannerItems();
    super.onInit();
  }

  void loadProductcarouselItems() {
    productCarouselItems.addAll([
      ProductCarouseItem(
          'https://assets.myntassets.com/f_webp,w_980,c_limit,fl_progressive,dpr_2.0/assets/images/2020/9/24/6f060090-1e7b-44b4-be71-83c342c5ab7c1600965593736-Pantaloons-desktop-banner.jpg'),
      ProductCarouseItem(
          'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/productimage/2019/9/29/68f1b791-7b82-4b9c-81a6-71eb4e1657f91569717917068-4.jpg'),
      ProductCarouseItem(
          'https://assets.myntassets.com/w_980,c_limit,fl_progressive,dpr_2.0/assets/images/2020/9/25/82188d2f-6ef6-4040-aeaf-4eb14fcecccb1600976836176-Pre-buzz-main_DK_Banner.jpg'),
      ProductCarouseItem(
          'https://img.thesouledstore.com/public/theSoul/uploads/slider/20200906111658.jpg'),
      ProductCarouseItem(
          'https://images.bewakoof.com/uploads/grid/app/bewakoof-tribe-offer-discount-online-shopping-deskto-bannr-1599219437.jpg'),
    ]);
  }

  void loadProductList() {
    productItems.addAll([
      ProductItem(140, 'Men T-Shirt',
          'https://img.thesouledstore.com/public/theSoul/uploads/catalog/product/1586353119_7100176.jpg'),
      ProductItem(233, 'Men Shirt',
          'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/9982787/2019/10/23/7d437d1a-5e21-4efd-9854-6d17a43dcf3e1571818952031-Levis-Men-Shirts-6101571818949572-1.jpg'),
      ProductItem(233, 'Men T-Shirt',
          'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/productimage/2019/9/29/68f1b791-7b82-4b9c-81a6-71eb4e1657f91569717917068-4.jpg'),
      ProductItem(233, 'Men\'s Kurtha',
          'https://images.bewakoof.com/t540/save-our-home-half-sleeve-t-shirt-men-s-printed-t-shirts-276161-1594353909.jpg'),
      ProductItem(233, 'Men T-Shirt',
          'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/9982787/2019/10/23/7d437d1a-5e21-4efd-9854-6d17a43dcf3e1571818952031-Levis-Men-Shirts-6101571818949572-1.jpg'),
    ]);
  }

  void loadBannerItems() {
    bannerImageItems.addAll([
      BannerImageItem(
          'https://assets.myntassets.com/w_196,c_limit,fl_progressive,dpr_2.0/assets/images/2020/8/31/8d60c69b-9a18-413a-8e28-fe823f8304881598892141339-levis.jpg'),
      BannerImageItem(
          'https://assets.myntassets.com/w_196,c_limit,fl_progressive,dpr_2.0/assets/images/2020/8/31/0aa11afa-b514-42b7-8438-d8ae02a185721598892141729-USPA.jpg'),
    ]);
  }
}

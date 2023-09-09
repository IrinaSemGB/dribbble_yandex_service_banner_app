import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../screens/widgets/banners/banner_page_1_widget.dart';
import '../screens/widgets/banners/banner_page_2_widget.dart';
import '../screens/widgets/banners/banner_page_3.dart';

class BannerController extends GetxController {
  static BannerController get find => Get.find();

  final LiquidController liquidController = LiquidController();
  RxInt currentPage = 0.obs;

  void onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;

  final List<Widget> pages = [
    BannerPage1(),
    BannerPage2(),
    BannerPage3(),
  ];
}
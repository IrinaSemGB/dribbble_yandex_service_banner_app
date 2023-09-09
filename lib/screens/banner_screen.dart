import 'package:dribbble_yandex_service_baner_app/constants/app_colors.dart';
import 'package:dribbble_yandex_service_baner_app/controllers/Banner_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BannerScreen extends StatelessWidget {
  BannerScreen({super.key});

  final _bannerController = Get.put(BannerController());

  @override
  Widget build(BuildContext context) {

    print(_bannerController.currentPage);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: _bannerController.pages,
            enableSideReveal: true,
            slideIconWidget: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.grey,
            ),
            liquidController: _bannerController.liquidController,
            onPageChangeCallback: _bannerController.onPageChangeCallback,
          ),
          Obx(
            () => Positioned(
              bottom: MediaQuery.of(context).size.height * 0.06,
              child: AnimatedSmoothIndicator(
                activeIndex: _bannerController.currentPage.value,
                count: _bannerController.pages.length,
                effect: WormEffect(
                  activeDotColor: AppColors.orange,
                  dotColor: Colors.grey,
                  dotHeight: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






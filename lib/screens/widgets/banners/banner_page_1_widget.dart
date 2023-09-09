import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_titles.dart';
import '../yandex_title.dart';

class BannerPage1 extends StatelessWidget {
  const BannerPage1({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    final double height = size.height;

    return Container(
      color: AppColors.white,
      padding: EdgeInsets.only(
        top: height * 0.05,
        bottom: height * 0.15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          YandexTitleWidget(height: height),
          Center(
            child: Image.asset(
              AppImages.banner1,
              height: height * 0.6,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: height * 0.04,
            ),
            child: Text(
              AppTitles.banner1Title,
              style: GoogleFonts.openSans(
                color: AppColors.titleBlack,
                fontWeight: FontWeight.bold,
                fontSize: height * 0.04,
                letterSpacing: -0.7,
                height: 0.9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
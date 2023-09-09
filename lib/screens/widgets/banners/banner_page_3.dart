import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_titles.dart';
import '../yandex_title.dart';

class BannerPage3 extends StatelessWidget {
  const BannerPage3({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    final double height = size.height;

    return Container(
      color: AppColors.blue,
      padding: EdgeInsets.only(
        top: height * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YandexTitleWidget(height: height),
          Container(
            padding: EdgeInsets.only(
              left: height * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  AppTitles.banner3Title,
                  style: GoogleFonts.openSans(
                    color: AppColors.titleBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: height * 0.04,
                    letterSpacing: -1.0,
                    height: 0.9,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  AppTitles.banner3Subtitle,
                  style: GoogleFonts.openSans(
                    color: AppColors.titleBlack,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.9,
                    height: 1.1,
                    fontSize: height * 0.018,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            AppImages.banner3,
          ),
        ],
      ),
    );
  }
}
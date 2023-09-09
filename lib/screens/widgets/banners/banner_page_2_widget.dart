import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_titles.dart';
import '../yandex_title.dart';

class BannerPage2 extends StatelessWidget {
  const BannerPage2({super.key});

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;

    return Container(
      color: AppColors.black,
      padding: EdgeInsets.only(
        top: height * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          YandexTitleWidget(
            height: height,
            color: AppColors.white,
          ),
          Container(
            padding: EdgeInsets.only(
              left: height * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTitles.banner2Title1,
                  style: GoogleFonts.openSans(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.057,
                    letterSpacing: -1.0,
                    height: 0.9,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  AppTitles.banner2Title2,
                  style: GoogleFonts.openSans(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: height * 0.057,
                    letterSpacing: -1.0,
                    height: 0.9,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Image.asset(
            AppImages.banner2,
            width: width,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import '../../constants/app_titles.dart';

class YandexTitleWidget extends StatelessWidget {

  final double height;
  final Color color;

  const YandexTitleWidget({
    super.key,
    required this.height,
    this.color = AppColors.titleBlack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: height * 0.04,
      ),
      height: height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppTitles.yandex,
            style: GoogleFonts.openSans(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: height * 0.041,
              letterSpacing: -2.0,
            ),
          ),
          SizedBox(width: height * 0.01),
          Image.asset(
            AppImages.logo,
            height: height * 0.04,
          ),
          SizedBox(width: height * 0.01),
          Text(
            AppTitles.uslugi,
            style: GoogleFonts.openSans(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: height * 0.041,
              letterSpacing: -2.0,
            ),
          ),
        ],
      ),
    );
  }
}
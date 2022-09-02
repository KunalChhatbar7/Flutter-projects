import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logindesign/constants/colors.dart';

class AppFontStyle {
  TextStyle splashScreenFontStyle() {
    return GoogleFonts.juliusSansOne(
      fontStyle: FontStyle.normal,
      fontSize: 30,
      color: AppColors().mainColor,
    );
  }

  TextStyle titleFontStyle({bool? isBold, Color? changeColor}) {
    return GoogleFonts.juliusSansOne(
      fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400,
      fontSize: 25,
      color: changeColor ?? AppColors().mainColor,
    );
  }

  TextStyle subTitleFontStyle({bool? isBold}) {
    return GoogleFonts.juliusSansOne(
      fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400,
      fontSize: 20,
      color: AppColors().blacColor,
    );
  }

  TextStyle fieldFontStyle() {
    return GoogleFonts.juliusSansOne(
      fontSize: 16,
      color: AppColors().textColor,
    );
  }

  TextStyle buttonTextStyle() {
    return GoogleFonts.juliusSansOne(
      fontSize: 16,
      color: AppColors().whiteColor,
    );
  }
}

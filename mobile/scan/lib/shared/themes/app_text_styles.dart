import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final normalLight = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w100,
    color: AppColors.darkGray,
  );
  static final splashTittle = GoogleFonts.montserrat(
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGray,
  );
  static final normalBold = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGray,
  );
  static final normalRegular = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: AppColors.darkGray,
  );
  static final textButtonWhite = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: AppColors.white,
  );

  static final textButtonBlack = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: AppColors.white,
  );
  static final bigBold = GoogleFonts.montserrat(
    fontSize: 44,
    fontWeight: FontWeight.bold,
    color: AppColors.darkGray,
  );
}

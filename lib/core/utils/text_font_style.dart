import 'package:care_tutors_assignment/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFontStyle {
  TextFontStyle._();

  static final headline24Poppins = GoogleFonts.poppins(
      color: AppColors.primaryColor,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600);

  static final headline24PoppinsBlack = GoogleFonts.poppins(
      color: AppColors.headlineFontColor,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600);

  static final headline18PoppinsBlack = GoogleFonts.poppins(
      color: AppColors.headlineFontColor,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600);

  static final headline14PoppinsBlack = GoogleFonts.poppins(
      color: AppColors.headlineFontColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);

  static final headline14PoppinsRegular = GoogleFonts.poppins(
      color: const Color(0xFF80b4f0),
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);
}

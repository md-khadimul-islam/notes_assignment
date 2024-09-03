import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../../core/utils/text_font_style.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.title,
    this.controller,
    this.textInputAction = TextInputAction.next,
    required this.hintText,
    this.focusNode,
    this.keyboard,
    this.validator,
  });

  final String title, hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboard;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextFontStyle.headline18PoppinsBlack),
        SizedBox(height: 10.h),
        TextFormField(
          controller: controller,
          cursorColor: AppColors.cursorColor,
          focusNode: focusNode,
          keyboardType: keyboard,
          validator: validator,
          textInputAction: textInputAction,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextFontStyle.headline14PoppinsBlack,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide:
                    BorderSide(color: const Color(0xFFb3d2f6), width: 1.sp)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide:
                    BorderSide(color: const Color(0xFF3386e7), width: 1.sp)),
            disabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color(0xFFcce1f9), width: 1.sp),
                borderRadius: BorderRadius.circular(12.r)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: Colors.red, width: 1.sp)),
          ),
        ),
      ],
    );
  }
}

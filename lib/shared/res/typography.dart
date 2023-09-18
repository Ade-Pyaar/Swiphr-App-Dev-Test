import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle level1 = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
    height: 116 / 96,
  );

  static TextStyle level2 = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textBlack,
    height: 77 / 64,
  );
}

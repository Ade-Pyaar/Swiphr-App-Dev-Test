import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 303,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: AppColors.borderColour),
        ),
        color: AppColors.buttonBlack,
      ),
      padding: EdgeInsets.only(
        right: 16.w,
        left: 30.w,
      ),
      child: child,
    );
  }
}

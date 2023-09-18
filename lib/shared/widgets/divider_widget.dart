import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/res.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 5,
          width: 2,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: AppColors.dividerBlack,
              ),
            ),
            color: AppColors.dividerBlack,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 5,
          width: 2,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: AppColors.dividerBlack,
              ),
            ),
            color: AppColors.dividerBlack,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 5,
          width: 2,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: AppColors.dividerBlack,
              ),
            ),
            color: AppColors.dividerBlack,
          ),
        ),
      ],
    );
  }
}

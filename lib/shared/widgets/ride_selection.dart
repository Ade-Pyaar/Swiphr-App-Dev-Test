import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/res.dart';

class RideSelectionWidget extends StatefulWidget {
  const RideSelectionWidget({
    super.key,
    required this.isSelected,
    required this.carName,
    required this.carCapacity,
    required this.amount,
  });

  final bool isSelected;
  final String carName;
  final String carCapacity;
  final String amount;

  @override
  State<RideSelectionWidget> createState() => _RideSelectionWidgetState();
}

class _RideSelectionWidgetState extends State<RideSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.w,
      padding: EdgeInsets.symmetric(
        vertical: 13.h,
        horizontal: 37.w,
      ),
      decoration: ShapeDecoration(
        color: widget.isSelected ? AppColors.purple : AppColors.lightGrey,
        shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: AppColors.borderColour,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.carName,
                style: TextStyles.level2.copyWith(
                  color:
                      widget.isSelected ? AppColors.white : AppColors.textBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                widget.carCapacity,
                style: TextStyles.level2.copyWith(
                  color:
                      widget.isSelected ? AppColors.white : AppColors.textBlack,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\$ ${widget.amount}",
                style: TextStyles.level2.copyWith(
                  color:
                      widget.isSelected ? AppColors.white : AppColors.textBlack,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

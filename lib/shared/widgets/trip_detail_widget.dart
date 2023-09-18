import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiphr_app_dev_test/shared/widgets/divider_widget.dart';

import '../res/res.dart';

class TripDetailWidget extends StatefulWidget {
  const TripDetailWidget({
    super.key,
    required this.isStartingPoint,
    required this.isEndingPoint,
    required this.locationName,
    required this.locationIcon,
  });

  final bool isStartingPoint;
  final bool isEndingPoint;
  final String locationName;
  final Widget locationIcon;

  @override
  State<TripDetailWidget> createState() => _TripDetailWidgetState();
}

class _TripDetailWidgetState extends State<TripDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.w,
      padding: EdgeInsets.symmetric(
        horizontal: 27.w,
      ),
      decoration: ShapeDecoration(
        color: AppColors.lightGrey,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.borderColour,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: widget.isStartingPoint
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              if (widget.isStartingPoint == false) const DividerWidget(),
              widget.locationIcon,
              if (widget.isEndingPoint == false) const DividerWidget(),
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            widget.locationName,
            style: TextStyles.level2.copyWith(
              color: AppColors.textBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

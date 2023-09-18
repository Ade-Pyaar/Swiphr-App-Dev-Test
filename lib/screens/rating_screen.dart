import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:swiphr_app_dev_test/shared/widgets/buttons.dart';
import 'package:swiphr_app_dev_test/shared/widgets/trip_detail_widget.dart';

import '../shared/res/res.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.purple,
              height: 190,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 36,
                  right: 38,
                  top: 57,
                  bottom: 55,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        foregroundColor: AppColors.buttonBlack,
                        backgroundColor: AppColors.white,
                        child: Icon(
                          PhosphorIcons.regular.x,
                        ),
                      ),
                    ),
                    SizedBox(width: 80.w),
                    Text(
                      "Rate Your Trip",
                      style: TextStyles.level1.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const Expanded(child: SizedBox())
                  ],
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: ShapeDecoration(
                  color: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                    side: BorderSide(
                      color: AppColors.borderColour,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 30.w,
                        horizontal: 27.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                foregroundColor: AppColors.buttonBlack,
                                backgroundColor: AppColors.white,
                                foregroundImage: const AssetImage(
                                  "assets/profile_image_2.png",
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ben Stokes",
                                    style: TextStyles.level2,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: AppColors.yellow,
                                      ),
                                      const Text("4.9"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors.purple,
                            child: Icon(
                              Icons.message,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "How is your trip?",
                        style: TextStyles.level1,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: 40,
                          color: AppColors.yellow,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 40,
                          color: AppColors.yellow,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 40,
                          color: AppColors.yellow,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 40,
                          color: AppColors.yellow,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 40,
                          color: AppColors.dividerBlack,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 22.h,
                        horizontal: 27.w,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100.h,
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 19,
                            ),
                            decoration: ShapeDecoration(
                              color: AppColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.r),
                                ),
                                side: BorderSide(
                                  color: AppColors.borderColour,
                                ),
                              ),
                            ),
                            child: Text(
                              "Write your feedback here",
                              style: TextStyles.level2.copyWith(
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Trip Detail",
                              style: TextStyles.level1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TripDetailWidget(
                      isStartingPoint: true,
                      isEndingPoint: false,
                      locationName: "Skate Park",
                      locationIcon: Icon(
                        Icons.circle_outlined,
                        color: AppColors.purple,
                      ),
                    ),
                    TripDetailWidget(
                      isStartingPoint: false,
                      isEndingPoint: true,
                      locationName: "Home",
                      locationIcon: Icon(
                        Icons.pin_drop,
                        color: AppColors.pink,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 36.h,
                        horizontal: 36.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Detail",
                            style: TextStyles.level1,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Trip Expense",
                                style: TextStyles.level2,
                              ),
                              Text(
                                "\$ 9,00",
                                style: TextStyles.level2,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Discount Voucher",
                                style: TextStyles.level2,
                              ),
                              Text(
                                "\$ 1,00",
                                style: TextStyles.level2,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: TextStyles.level2,
                              ),
                              Text(
                                "\$ 8,00",
                                style: TextStyles.level2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: AppButton(
                        child: Text(
                          "Submit",
                          style: TextStyles.level1
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

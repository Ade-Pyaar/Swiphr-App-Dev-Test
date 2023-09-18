import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:swiphr_app_dev_test/screens/rating_screen.dart';
import 'package:swiphr_app_dev_test/shared/widgets/map_widget.dart';

import '../shared/res/res.dart';
import '../shared/widgets/buttons.dart';
import '../shared/widgets/ride_selection.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: Stack(
                  children: [
                    const MapWidget(),
                    // location card
                    Positioned(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            SizedBox(height: 20.h),
                            Container(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 36,
                                  right: 38,
                                  top: 0,
                                  bottom: 15,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: AppColors.purple,
                                      child: Icon(
                                        Icons.menu,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    const Image(
                                      image: AssetImage(
                                        "assets/lyft_logo.png",
                                      ),
                                    ),
                                    const CircleAvatar(
                                      foregroundImage: AssetImage(
                                          "assets/profile_image.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 120.h,
                              width: 310.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 17.w,
                                vertical: 23.h,
                              ),
                              decoration: ShapeDecoration(
                                color: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.r),
                                  ),
                                  side: BorderSide(
                                    color: AppColors.borderColour,
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle_outlined,
                                            color: AppColors.purple,
                                          ),
                                          SizedBox(width: 5.w),
                                          const Text("Skate Park"),
                                        ],
                                      ),
                                      Container(
                                        height: 1,
                                        width: 199.w,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: AppColors.borderColour,
                                            ),
                                          ),
                                          color: AppColors.borderColour,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.pin_drop,
                                            color: AppColors.pink,
                                          ),
                                          SizedBox(width: 5.w),
                                          const Text("Home"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 36,
                                        width: 68,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                              color: AppColors.borderColour,
                                            ),
                                          ),
                                          color: AppColors.lightGrey,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              PhosphorIcons.regular.plusCircle,
                                              size: 18,
                                            ),
                                            Text(
                                              "Add",
                                              style: TextStyles.level2.copyWith(
                                                color: AppColors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ride selection
                    Positioned(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 240.h,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 24.h,
                                  bottom: 10.h,
                                  right: 36.w,
                                  left: 36.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Choose your ride",
                                      style: TextStyles.level1,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.grey,
                                            blurRadius: 5.0,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: CircleAvatar(
                                        foregroundColor: AppColors.buttonBlack,
                                        backgroundColor: AppColors.white,
                                        child: Icon(
                                          PhosphorIcons.regular.caretLeft,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 0;
                                          });
                                        },
                                        child: RideSelectionWidget(
                                          carName: "Toyota Camry",
                                          carCapacity: "2-3 person",
                                          amount: "7,00",
                                          isSelected: selectedIndex == 0,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 1;
                                          });
                                        },
                                        child: RideSelectionWidget(
                                          carName: "Lexus R700",
                                          carCapacity: "2-3 person",
                                          amount: "9,00",
                                          isSelected: selectedIndex == 1,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = 2;
                                          });
                                        },
                                        child: RideSelectionWidget(
                                          carName: "Mercedes W90",
                                          carCapacity: "2-3 person",
                                          amount: "10,00",
                                          isSelected: selectedIndex == 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // last section
            Container(
              color: AppColors.white,
              height: 165.h,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 36.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Cash",
                              style: TextStyles.level2,
                            ),
                            Icon(
                              PhosphorIcons.regular.caretDown,
                              size: 15,
                            ),
                          ],
                        ),
                        Container(
                          height: 36.h,
                          width: 119.w,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(
                                color: AppColors.borderColour,
                              ),
                            ),
                            color: AppColors.lightGrey,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image:
                                    const AssetImage("assets/percent_star.png"),
                                width: 20.w,
                                height: 20.h,
                              ),
                              Text(
                                "Promo Code",
                                style: TextStyles.level2.copyWith(
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    AppButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Book this car",
                            style: TextStyles.level1.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 9,00",
                                style: TextStyles.level1.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: const RatingScreen(),
                                      curve: Curves.easeInOut,
                                      duration:
                                          const Duration(milliseconds: 300),
                                    ),
                                  );
                                },
                                child: CircleAvatar(
                                  foregroundColor: AppColors.buttonBlack,
                                  backgroundColor: AppColors.white,
                                  child: Icon(
                                    PhosphorIcons.regular.caretRight,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food_app/common/app_style.dart';
import 'package:multi_vendor_food_app/common/reusable_text.dart';
import 'package:multi_vendor_food_app/constants/constants.dart';
import 'package:multi_vendor_food_app/helper_functions/get_time_of_day.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                    radius: 22.r,
                    backgroundColor: kSecondary,
                    backgroundImage: const AssetImage('assets/foodly/bar.png')),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: 'Deliver To',
                          style: appStyle(13.0, kSecondary, FontWeight.w600)),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                          '16849 anarkali market lahore.',
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(11.0, kGrayLight, FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Text(
              HelperFunctions.getTimeOfDay(),
              style: const TextStyle(fontSize: 34),
            )
          ],
        ),
      ),
    );
  }
}

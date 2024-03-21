import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_food_app/constants/constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.containerContent});

  final Widget containerContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: Container(
          width: width,
          color: kOffWhite,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: containerContent,
          ),
        ),
      ),
    );
  }
}

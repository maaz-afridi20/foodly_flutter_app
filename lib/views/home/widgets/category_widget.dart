import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_food_app/common/app_style.dart';
import 'package:multi_vendor_food_app/common/reusable_text.dart';
import 'package:multi_vendor_food_app/constants/constants.dart';
import 'package:multi_vendor_food_app/controllers/category_controller.dart';
import 'package:multi_vendor_food_app/views/categories/all_categories.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    required this.category,
    super.key,
  });
  final dynamic category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return GestureDetector(
        onTap: () {
          if (controller.titleValue == category['_id']) {
            controller.updateCategory = '';
            controller.updateTitle = '';
          } else if (category['value'] == 'more') {
            Get.to(() => const AllCategories(),
                transition: Transition.fadeIn,
                duration: const Duration(milliseconds: 900));
          } else {
            controller.updateCategory = category['_id'];
            controller.updateTitle = category['title'];
          }
        },
        child: Obx(
          () => Container(
            margin: EdgeInsets.only(left: 5.w),
            padding: EdgeInsets.only(top: 4.h),
            width: width * 0.19,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                  color: controller.categoryValue == category['_id']
                      ? kSecondary
                      : kOffWhite,
                  width: .5.w),
            ),
            child: Column(
              children: [
                SizedBox(
                    height: 35.h,
                    child: Image.network(category['imageUrl'],
                        fit: BoxFit.contain)),
                ReusableText(
                    text: category['title'],
                    style: appStyle(12.0, kDark, FontWeight.normal)),
              ],
            ),
          ),
        ));
  }
}

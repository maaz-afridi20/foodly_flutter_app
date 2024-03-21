import 'package:multi_vendor_food_app/utils/exports.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget(
      {super.key,
      required this.price,
      required this.time,
      required this.title,
      required this.image,
      this.onTap});
  final String image, title, time;
  final double price;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(right: 12.0.w),
          child: Container(
            width: width * .75,
            height: 182.0.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                color: kLightWhite),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: SizedBox(
                      height: 112.h,
                      width: width * .8,
                      child: Image.network(image, fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            text: title,
                            style: appStyle(12.sp, kDark, FontWeight.w500),
                          ),
                          ReusableText(
                            text: "\$ $price",
                            style: appStyle(12.sp, kPrimary, FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            text: "Delivery time",
                            style: appStyle(9.sp, kGray, FontWeight.w500),
                          ),
                          ReusableText(
                            text: time,
                            style: appStyle(9.sp, kDark, FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

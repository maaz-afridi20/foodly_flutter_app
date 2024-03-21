import 'package:multi_vendor_food_app/utils/exports.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget(
      {super.key,
      required this.image,
      required this.logo,
      required this.time,
      required this.title,
      required this.rating,
      this.onTap});

  final String image;
  final String logo;
  final String title;
  final String time;
  final int rating;
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
                  padding: EdgeInsets.all(8.0.w),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0.r),
                        child: SizedBox(
                          height: 112.0.h,
                          width: width * .8,
                          child: Image.network(image, fit: BoxFit.fitWidth),
                        ),
                      ),
                      Positioned(
                          right: 10.w,
                          top: 10.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0.r),
                            child: Container(
                              color: kLightWhite,
                              child: Padding(
                                padding: EdgeInsets.all(2.h),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0.r),
                                  child: Image.network(logo,
                                      fit: BoxFit.contain,
                                      width: 20.w,
                                      height: 20.h),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: title,
                        style: appStyle(12.sp, kDark, FontWeight.w500),
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
                      Row(
                        children: [
                          RatingBarIndicator(
                              rating: rating.toDouble(),
                              itemCount: 5,
                              itemSize: 15.h,
                              itemBuilder: (context, index) =>
                                  const Icon(Icons.star, color: kPrimary)),
                          SizedBox(width: 10.w),
                          ReusableText(
                            text: "$rating+ rating and reviews",
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

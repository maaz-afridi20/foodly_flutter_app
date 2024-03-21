import 'package:multi_vendor_food_app/utils/exports.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, required this.food});

  final dynamic food;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(clipBehavior: Clip.hardEdge, children: [
        Container(
          margin: EdgeInsets.only(bottom: 8.h),
          height: 70.h,
          width: width,
          decoration: BoxDecoration(
            color: kOffWhite,
            borderRadius: BorderRadius.circular(9.r),
          ),
          child: Container(
            padding: EdgeInsets.only(bottom: 4.r),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 70.w,
                        height: 70.h,
                        child:
                            Image.network(food['imageUrl'], fit: BoxFit.cover),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                          color: kGray.withOpacity(0.6),
                          height: 16.h,
                          width: width,
                          child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemBuilder: (context, index) =>
                                  const Icon(Icons.star, color: kSecondary),
                              itemSize: 15.h),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: food['title'],
                      style: appStyle(11.0, kDark, FontWeight.w400),
                    ),
                    ReusableText(
                      text: "Delivery time : ${food['time']}",
                      style: appStyle(11, kGray, FontWeight.w400),
                    ),
                    SizedBox(width: width * 0.7, child: Container()),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 5.w,
          top: 6.h,
          child: Container(
            width: 60.w,
            height: 19.h,
            decoration: BoxDecoration(
                color: kPrimary, borderRadius: BorderRadius.circular(10.r)),
            child: Center(
                child: ReusableText(
              text: "\$ ${food['price']}",
              style: appStyle(12, kLightWhite, FontWeight.bold),
            )),
          ),
        )
      ]),
    );
  }
}

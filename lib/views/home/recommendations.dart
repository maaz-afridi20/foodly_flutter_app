import 'package:multi_vendor_food_app/utils/exports.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
          backgroundColor: kSecondary,
          centerTitle: true,
          title: ReusableText(
              text: "Recommended",
              style: appStyle(13.sp, kLightWhite, FontWeight.w600)),
          elevation: 0),
      body: BackgroundContainer(
          color: kOffWhite,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: ListView(
              children: List.generate(foods.length, (index) {
                var food = foods[index];
                return FoodTile(food: food);
              }),
            ),
          )),
    );
  }
}

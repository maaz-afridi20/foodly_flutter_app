import 'package:multi_vendor_food_app/utils/exports.dart';
import 'package:multi_vendor_food_app/views/home/widgets/food_tile.dart';

class AllFastFoods extends StatelessWidget {
  const AllFastFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kOffWhite,
          centerTitle: true,
          title: ReusableText(
              text: "Fast Foods",
              style: appStyle(13.sp, kGray, FontWeight.w600)),
          elevation: .3),
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

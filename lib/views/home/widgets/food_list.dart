import 'package:multi_vendor_food_app/utils/exports.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      padding: EdgeInsets.only(top: 10.h, left: 12.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (index) {
          var food = foods[index];
          return FoodWidget(
            image: food["imageUrl"],
            price: food["price"],
            time: food["time"],
            title: food["title"],
          );
        }),
      ),
    );
  }
}

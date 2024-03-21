import 'package:multi_vendor_food_app/utils/exports.dart';
import 'package:multi_vendor_food_app/views/home/widgets/restaurant_widget.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.h,
      padding: EdgeInsets.only(left: 12.0.w, top: 10.0.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (index) {
          var restaurant = restaurants[index];
          return RestaurantWidget(
            image: restaurant['imageUrl'],
            logo: restaurant['logoUrl'],
            time: restaurant['time'],
            title: restaurant['title'],
            rating: int.parse(restaurant['ratingCount']),
          );
        }),
      ),
    );
  }
}

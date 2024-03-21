import 'package:multi_vendor_food_app/utils/exports.dart';
import 'package:multi_vendor_food_app/views/home/widgets/restaurant_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: const Text('Nearby Restaurants')),
      body: BackgroundContainer(
          color: kOffWhite,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: ListView(
              children: List.generate(restaurants.length, (index) {
                var restaurant = restaurants[index];
                return RestaurantTile(restaurant: restaurant);
              }),
            ),
          )),
    );
  }
}
